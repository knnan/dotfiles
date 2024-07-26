
# If you come from bash you might have to change your $PATH.
# zmodload zsh/zprof # uncomment to start profiling zsh

export EDITOR="nvim"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_DIR="$HOME/.cache"
# Path to your oh-my-zsh installation.
export TERM="xterm-256color"
export ZSH="$HOME/.oh-my-zsh"


# set up Go lang path #
export GOPATH=$HOME/go

PATH=/bin:/usr/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.ssh:$HOME/.cargo/bin:$GOPATH/bin:/usr/local/go/bin:${PATH}
export PATH

# ZSH_THEME="robbyrussell"
# ZSH_THEME="common"
# ZSH_THEME="spaceship"

eval "$(oh-my-posh init zsh --config ~/.config/zsh/ohmyposh-themes/runik-custom.mytheme.omp.json)"

export UPDATE_ZSH_DAYS=10

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=81'
export HISTORY_IGNORE="google*"

# export MANWIDTH=999

setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_BEEP
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt histignorealldups
setopt HIST_SAVE_NO_DUPS

SAVEHIST=999999
HISTSIZE=1099999

# nvm and zsh-nvm configs
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=false
export NVM_DIR="$HOME/.nvm"

export MANPAGER='nvim +Man!'

# plugins=(
#   zsh-nvm 
#   copybuffer 
#   git 
#   fzf 
#   zsh-autosuggestions 
#   fast-syntax-highlighting 
#   autoupdate 
#   node 
#   colored-man-pages 
#   docker-compose
# )

# FZF configuration


alias fd="fdfind"

# Setting rg as the default source for fzf
export FZF_DEFAULT_COMMAND="rg --files --no-ignore --hidden --follow -g '!{.git,node_modules}/' 2> /dev/null"
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--scheme=path
--multi
--border
--color=fg:#676767,fg+:#d0d0d0,bg:-1,bg+:-1
--layout=reverse
--preview="echo {}"
--preview-window=right:40%:hidden:wrap
--height=50%
--bind tab:down,shift-tab:up
--bind space:toggle+down
--bind=ctrl-/:toggle-preview
--color=hl:#04d462,hl+:#5fd7ff,info:#afaf87,marker:#87ff00
--color=prompt:#d7005f,spinner:#af5fff,pointer:#af5fff,header:#87afaf
--color=border:#262626,label:#aeaeae,query:#d9d9d9
'

export FZF_CTRL_T_OPTS=$FZF_CTRL_T_OPTS'
--preview="bat --style=numbers --color=always --line-range :500 {}"
'
export FZF_CTRL_T_OPTS=$FZF_CTRL_T_OPTS'
--scheme=history
'

# fzf theme options
# export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
#   --color=fg:#676767,fg+:#d0d0d0,bg:-1,bg+:-1
#   --color=hl:#04d462,hl+:#5fd7ff,info:#afaf87,marker:#87ff00
#   --color=prompt:#d7005f,spinner:#af5fff,pointer:#af5fff,header:#87afaf
#   --color=border:#262626,label:#aeaeae,query:#d9d9d9'

# Completion options  to fzf command
export FZF_COMPLETION_OPTS='+c -x'

# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fdfind --hidden --follow --exclude ".git" --exclude "node_modules" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fdfind --type d --hidden --follow --exclude ".git" --exclude "node_modules" . "$1"
}

FZF_CTRL_T_COMMAND='fdfind --hidden --follow --exclude ".git" --exclude "node_modules" .'
FZF_CTRL_K_COMMAND='fdfind --type d --hidden --follow --exclude ".git" --exclude "node_modules" . ~'
FZF_ALT_C_COMMAND='fdfind --type d --hidden --follow --exclude ".git" --exclude "node_modules" . ~'


plugins=(
  zsh-nvm 
  copybuffer 
  git 
  fzf 
  zsh-autosuggestions 
  fast-syntax-highlighting 
  autoupdate 
  node 
  colored-man-pages 
  docker-compose
)


source $ZSH/oh-my-zsh.sh

# source fzf key bindings for zsh
source ~/.config/zsh/key-bindings.zsh

# bindkey '^ ' autosuggest-accept # (ctrl+space) 
export FZF_COMPLETION_TRIGGER=''
bindkey '\e[20;5~' autosuggest-accept # (ctrl+enter) . set the terminal escape sequence for this up first in konsole => edit current profile => keyboards => xterm ;
# bindkey '^T' fzf-completion


alias wezconfig="vi ~/.config/wezterm/wezterm.lua"
alias gitconfig="vi ~/.gitconfig"
alias zshconfig="vi ~/.zshrc"
alias zshhistory="vi ~/.zsh_history"
alias spaceconfig="vi ~/.config/spaceship.zsh"
alias sshconfig="vi ~/.ssh/config"
alias sshconfig-work="vi ~/.ssh/conf.d/config.work"
alias sshconfig-pers="vi ~/.ssh/conf.d/config.personal"
alias viconfig="vi ~/.config/nvim/init.lua"
alias batconfig="vi ~/.config/bat/config"
alias ls='exa -a'
alias ld='exa -D'
alias ll='exa -las size'
alias lt="exa --tree -L 2"
alias rmdir="rm -r"
#alias bat=batcat # when installed from ubuntu source package the binary is named as batcat
alias cat='bat'
alias catp='bat -p'
alias df='duf'
alias du='ncdu --color dark'
alias jj='cd ~'
alias reload="source ~/.zshrc"
alias python=python3.9
alias xclip="xclip -selection c"
alias -g G=" | rg"
alias -g ff=" | fzf"
alias vpn="sudo openvpn --cd ~/vpn/blr-vpn/ --config blr-vpn.ovpn  --auth-user-pass vpn_auth.txt"
alias vpn_sify="sudo openvpn --cd ~/vpn/sify-vpn --config sify-vpn.ovpn  --auth-user-pass vpn_auth.txt"
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias sys-update="sudo apt update -y && sudo apt upgrade -y && flatpak update -y"
alias shl-update="upgrade_oh_my_zsh_all"
alias dc="docker compose"
alias dd="dev-dockers"
alias ansp="ansible-playbook"

if type nvim >/dev/null 1>&1; then
  alias vim='nvim'
  alias vi='nvim'
fi

alias eve="code --list-extensions |
xargs -L 1 echo code --install-extension |
sed 's/$/ --force/' |
sed '\$!s/$/ \&\&/' > install-extensions.sh"

docker-service() {
  sudo systemctl $1 containerd.service
  sudo systemctl $1 docker.socket
  sudo systemctl $1 docker.service
}

ext-reload() {
  gnome-extensions disable display-switcher@iyadk.com
  gnome-extensions disable wintile@nowsci.com
  gnome-extensions enable display-switcher@iyadk.com
  gnome-extensions enable wintile@nowsci.com
}

search-pkg() {
  apt-cache search $1
}
install-pkg() {
  sudo apt install "$@"
}
remove-pkg() {
  sudo apt remove --purge "$@"
  sudo apt autoclean -y && sudo apt autoremove -y
}

system-update() {
  sudo apt update -y || echo "apt update failed"
  sudo apt upgrade -y || echo "apt upgrade failed"
  flatpak update -y || echo "flatpak update failed"
  sudo apt autoremove -y || echo "some Issue"
  sudo apt autoclean -y || echo "some issue"
}

kk() {
  if [ $# -eq 0 ]; then
    htop
  else
    htop -F $1
  fi
}

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}
vif() {
  nvim "$(fzf)"
}
ii() {
  nvim "$(fzf)"
}

clip() {
  cat $1 | xclip -selection c
}

dotfiles_add() {
  config status
  config add -u
  config commit -m $1
  config push
}

rpt() {
  watch -n 1 "$@"
}

help() {
  if [ $# -eq 0 ]; then
    cht.sh
  else
    cht.sh "$@"
  fi
}

# ORIGINAL_LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:'

LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=01;35;31:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:'

# LS_COLORS=$ORIGINAL_LS_COLORS

export LS_COLORS

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
# zprof # uncomment end of profiling

export PATH=$PATH
