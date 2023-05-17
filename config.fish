fortune | cowsay -f tux
set fish_color_command brwhite --bold
set fish_color_host yellow
set -gx HOMEBREW_NO_AUTO_UPDATE 1
set -gx CLOUDINARY_URL 'cloudinary://315868988132497:uuY-fcLEdUz2OZv6ePGa45qeYJo@dl4o8eaha'

#  wechall tokens
set -gx WECHALLUSER "japrozs"
set -gx WECHALLTOKEN "77B03-7C855-137B2-8CE26-179B1-69C92"

function tree
	find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
end

function ask -d 'ask bratgpt something'
	curl 'https://bratgpt.vercel.app/api/generate' \                                   17:56:44
         -H 'authority: bratgpt.vercel.app' \
         -H 'accept: */*' \
         -H 'accept-language: en-US,en;q=0.9,hi;q=0.8' \
         -H 'content-type: application/json' \
         -H 'dnt: 1' \
         -H 'origin: https://bratgpt.com' \
         -H 'referer: https://bratgpt.com/' \
         -H 'sec-ch-ua: "Google Chrome";v="113", "Chromium";v="113", "Not-A.Brand";v="24"' \
         -H 'sec-ch-ua-mobile: ?0' \
         -H 'sec-ch-ua-platform: "macOS"' \
         -H 'sec-fetch-dest: empty' \
         -H 'sec-fetch-mode: cors' \
         -H 'sec-fetch-site: cross-site' \
         -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36' \
         --data-raw "{\"prompt\":[{\"role\":\"user\",\"content\":\"$var\"}]}" \
         --compressed
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
