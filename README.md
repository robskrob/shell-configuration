# Dependencies

**Requirements**
This vim setup uses [vim-plug](https://github.com/junegunn/vim-plug)
Git
NVM
Node
Yarn

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

# install coc extensions
:CocInstall coc-json coc-tsserver coc-css coc-prettier coc-eslint
```

## Kotlin Development with Ctags

Kotlin support uses ctags instead of LSP (kotlin-lsp doesn't support go-to-definition for JAR
dependencies).

**Install dependencies:**
```sh
brew install universal-ctags ripgrep

Generate tags file (run at project root):
ctags -R --languages=kotlin,java --excmd=number \
--exclude='build/*' --exclude='.gradle/*' \
src/main

Re-run when adding new Kotlin files.

Keybindings:
- Ctrl-] - Go to definition (ctags)
- Ctrl-t - Jump back
- K - Find all references (ripgrep)

Note: CoC LSP features (gd, gr) still work for other languages (Go, TypeScript, etc.). For Kotlin,
use the keybindings above.

## On first run

If you see errors, Vim is complaining about not having the plugins it wants installed. Simply run:

    :PlugInstall
