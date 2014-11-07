#!/usr/bin/env bash
echo ""
echo "Deploy nvimrc ......"

rm -f $HOME/.nvimrc

cd $HOME/.nvim
mkdir bundle
cd bundle
git clone https://github.com/Shougo/neobundle.vim
cd $HOME
ln -s .nvim/nvimrc .nvimrc

echo "Done."
