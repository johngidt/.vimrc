# verzola's .vimrc
my vimrc and 1 cmd auto installer

![Image of my vim](https://raw.githubusercontent.com/verzola/.vimrc/master/vimux.png)

## pre-requirements
- git
- vim

## suggestions
- https://github.com/verzola/.tmux
- https://github.com/ryanoasis/nerd-fonts

## install
this script installs Vundle, clone this repo and creates a symbolic link in ~/.vimrc to ~/git/vimrc/.vimrc
```sh
$ curl -L https://raw.githubusercontent.com/verzola/.vimrc/master/install.sh | sh
```

## features
- vundle to manage plugins
- nice sensible defaults
- almost every line has a comment
- organized in sections (plugins, settings, plugin settings, abbreviations, mappings & auto commands)
- php, python, js & jsx integration
- git integration
- fast shortcuts with leader key
- :w!! to save as sudo
- 4 spaces indentation
- abbreviations for typo in commands (:W, :Q, :X)

### maps & shortcuts
- ctrl+e -> toggle nerdtree
- gt -> next tab
- gT -> prev tab
- ctrl+p -> go to file
- ctrl+n -> select next (multiple cursors)
- ctrl + h -> go a split left
- ctrl + l -> go a split right
- ctrl + j -> go a split below
- ctrl + k -> go a split upper
- leader key -> ,
- leader+w -> save
- leader+q -> quit
- leader+x -> save&quit
- leader+ev -> edit vimrc
- leader+sv -> source vimrc
- leader+p -> toggle paste mode
- leader+h -> toggle search highlight
- leader+ga -> git add
- leader+gs -> git status
- leader+gc -> git commit
- leader+gd -> git diff
- leader+gp -> git push
- leader+gu -> git pull
- leader+gb -> git branch
- leader+gbl -> git blame
- leader+go -> git checkout
- leader+gl -> git log

### plugins
- VundleVim/Vundle.vim
- cdmedia/itg_flat_vim
- scrooloose/nerdtree
- ryanoasis/vim-devicons
- ctrlpvim/ctrlp.vim
- vim-airline/vim-airline
- vim-airline/vim-airline-themes
- tpope/vim-fugitive
- airblade/vim-gitgutter
- spf13/PIV
- mattn/emmet-vim
- davidhalter/jedi-vim
- tpope/vim-surround
- pangloss/vim-javascript
- terryma/vim-multiple-cursors
- mxw/vim-jsx

