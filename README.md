# Dependencies

This vim setup uses [vim-plug](https://github.com/junegunn/vim-plug)

## To install

```sh
ln -s ~/your/directory/.vim ~/.vim
ln -s ~/your/directory/.vimrc ~/.vimrc

vim +PlugInstall +qall

# set up coc for auto complete
cd .vim/plugged/coc.nvim/
yarn install

# install ts/js coc server
:CocInstall coc-json coc-tsserver
```

## On first run

If you see errors, Vim is complaining about not having the plugins it wants installed. Simply run:

    :PlugInstall
