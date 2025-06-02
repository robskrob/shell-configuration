# Dependencies

**Requirements**
This vim setup uses [vim-plug](https://github.com/junegunn/vim-plug)

brew install vim
Git
python3
NVM
Node
Yarn

in .zshrc:
```
alias vim="/opt/homebrew/bin/vim"
```

**optional**
ohmyzsh

## To install

```sh
ln -s ~/your/directory/.vim ~/.vim
ln -s ~/your/directory/.vimrc ~/.vimrc

vim +PlugInstall +qall

# set up coc for auto complete
cd .vim/plugged/coc.nvim/
yarn install

# install ts/js coc server
:CocInstall coc-json coc-tsserver coc-css coc-prettier
```

## On first run

If you see errors, Vim is complaining about not having the plugins it wants installed. Simply run:

    :PlugInstall
