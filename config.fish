fortune | cowsay -f tux
set fish_color_command brwhite --bold
set fish_color_host yellow
set -gx HOMEBREW_NO_AUTO_UPDATE 1
set -gx CLOUDINARY_URL 'cloudinary://<INSERT_KEY_HERE>'

function tree
	find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
end

function rnd-hash -d 'generate a random 32bit md5sum hash'
	string join '' $argv | md5sum | head -c 32
end

set -g code $HOME/coding/programming
set -g git $code/github 
set -g rnd $HOME/rnd
set -g ctf $HOME/coding/ctf
set -g notes $HOME/notes
set -gx PYTHONPATH "/usr/local/lib/python3.9/site-packages"

alias jsc="/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Helpers/jsc"
alias netinfo="node -e  'console.table('(curl ipinfo.io | tr '\n' ' ' )')'"
alias rmysql="mysql -uroot"
alias dev="multipass shell dev"

set -gx PATH $HOME/.cargo/bin/ $PATH
set -gx LDFLAGS "$LDFLAGS -L/usr/local/opt/libedit/lib"
# set -gx CPPFLAGS "$CPPFLAGS -I/usr/local/opt/libedit/include"
# set -gx PKG_CONFIG_PATH "/usr/local/opt/libedit/lib/pkgconfig"
set -gx LDFLAGS "$LDFLAGS -L/usr/local/opt/llvm@12/lib"
set -gx CPPFLAGS "$CPPFLAGS -I/usr/local/opt/llvm@12/include"
set -gx LDFLAGS "$LDFLAGS -L/usr/local/opt/opencv@3/lib"
# set -gx CPPFLAGS "$CPPFLAGS -I/usr/local/opt/opencv@3/include"
# set -gx PKG_CONFIG_PATH "$PKG_CONFIG_PATH /usr/local/opt/libedit/lib/pkgconfig"
set -gx PKG_CONFIG_PATH "/usr/local/opt/opencv@3/lib/pkgconfig"
set -gx PKG_CONFIG_PATH "$PKG_CONFIG_PATH;/usr/local/Cellar/sdl2/2.0.20/lib/pkgconfig"

set -gx CMAKE_PREFIX_PATH "$CMAKE_PREFIX_PATH /usr/local/opt/qt@5"
set -gx PATH "$PATH /usr/local/opt/qt@5/bin"
set -gx PATH "$PATH /usr/local/Cellar/dosfstools/4.2/sbin/"

export NVM_DIR="$HOME/.nvm"
fish_add_path /usr/local/opt/llvm@12/bin
fish_add_path /usr/local/opt/opencv@3/bin
fish_add_path /usr/local/opt/e2fsprogs/bin
fish_add_path /usr/local/opt/e2fsprogs/sbin
fish_add_path /usr/local/opt/e2fsprogs/bin
fish_add_path /usr/local/opt/e2fsprogs/sbin
fish_add_path /opt/local/bin

# Bun
set -Ux BUN_INSTALL "/Users/pritpalsinghsaini/.bun"
set -px --path PATH "/Users/pritpalsinghsaini/.bun/bin"

function upload -d "Upload a file to https://keep.sh"
	curl --upload-file $argv[1] https://free.keep.sh
end

set -gx OPENSSL_ROOT_DIR /usr/local/opt/openssl@3
