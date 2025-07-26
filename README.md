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

# install coc extensions
:CocInstall coc-json coc-tsserver coc-css coc-prettier coc-eslint
```

## Kotlin Language Server Setup

For Kotlin support, you'll need to set up the Kotlin Language Server manually:

```sh
# Clone and build the Kotlin Language Server
cd ~/code/opensource/
git clone https://github.com/fwcd/kotlin-language-server.git
cd kotlin-language-server
./gradlew :server:installDist
```

The CoC configuration in `.vim/coc-settings.json` includes the Kotlin language server setup. Point the languageserver to the built binary at:
```
/Users/<username>/code/opensource/kotlin-language-server/server/build/install/server/bin/kotlin-language-server
```

This provides Kotlin autocompletion, syntax highlighting, and error checking in vim.

## On first run

If you see errors, Vim is complaining about not having the plugins it wants installed. Simply run:

    :PlugInstall
