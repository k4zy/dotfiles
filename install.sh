#!/usr/bin/env bash
set -eo pipefail

tempfile=/tmp/dotfiles.zip
workspace=/tmp/dotfiles

# GitHubからdotfiles.zipをダウンロードしてくる (まだGitが入っていないかもしれないので)
curl -LSfs -o ${tempfile} https://github.com/kazy1991/dotfiles/archive/master.zip

# /tmp/dotfiles に解凍
unzip -oq ${tempfile} -d ${workspace}

# bundle install を実行したいとか諸々の都合で　/tmp/dotfiles に移動する。
# 後で一応元のパスに戻りたいので pushd と popd を使う
pushd ${workspace}/dotfiles-master > /dev/null

# コマンドラインツールをインストールするためにポップアップを出す。
# GUIで入れるのでCUI側では入るまで待つ
xcode-select -p > /dev/null
if [ "$?" -ne 0 ]; then
  xcode-select --install
  while :
  do
    xcode-select -p
    if [ "$?" -eq 0 ]; then
      break
    fi
    sleep 5
  done
fi

# homebrewを入れる
which brew > /dev/null
if [ "$?" -ne 0 ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# serverkitを入れる
sudo gem install bundler > /dev/null
sudo bundle install > /dev/null

# serverkit applyを実行
sudo bundle exec serverkit apply recipe.yml.erb --variables=variables.yml
bundle exec serverkit apply recipe.yml.erb --variables=variables.yml

# 元のパスに戻る
popd > /dev/null

# 一時的に使ったファイルとディレクトリを片付ける
rm -rf ${tempfile} ${workspace}
