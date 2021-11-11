fortune | cowsay -f tux
set fish_color_command brwhite --bold
set fish_color_host yellow
set -g PATH $HOME/anaconda3/bin $PATH
set -g PATH $HOME/anaconda3 $PATH
set -g PATH /Users/pritpalsinghsaini/code/vcpkg/buildtrees/_vcpkg/build $PATH
set -g PATH $HOME/depot_tools $PATH
set -g PATH /usr/local/sbin $PATH
set -g code $HOME/Documents/programming
set -g proj $HOME/code/projects/
set -g others $HOME/code/others/
set -g git $HOME/code/github

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /usr/local/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

alias jsc="/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Helpers/jsc"
alias netinfo="node -e  'console.table('(curl ipinfo.io | tr '\n' ' ' )')'"

set -g PATH /usr/local/opt/binutils/bin $PATH
export NVM_DIR="$HOME/.nvm"
