#!/usr/bin/env sh
echo ""

NVIM_HOME=~/.nvim
BUNDLE_DIR=$NVIM_HOME/bundle

if [ -e $NVIM_HOME ]; then
  echo "$NVIM_HOME already exists!"
  exit 1
fi

echo "Fetching nvimrc..."
rm -rf "$NVIM_HOME"
git clone git@github.com:gonglexin/.nvim.git $NVIM_HOME

echo "Fetching NeoBundle..."
mkdir -p $NVIM_HOME/bundle
git clone https://github.com/Shougo/neobundle.vim $NVIM_HOME/bundle/neobundle.vim

echo "Installing plugins..."
nvim +NeoBundleInstall +q

echo "Done."
