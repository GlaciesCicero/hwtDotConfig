source ~/.hwtStuffs.zsh
# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Fig pre block. Keep at the top of this file.
#source ~/.zinit/bin/zinit.zsh
#sublime Fig pre block. Keep at the top of this file.
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/hewentao/.oh-my-zsh"
# source ~/.local/share/zinit/zinit.git/zinit.zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
#
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

eval $(thefuck --alias)

plugins=(
	git
	zsh-autosuggestions
	autojump
	sublime
	sudo
	# vi-mode
    zsh-vi-mode
)


[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
source $ZSH/oh-my-zsh.sh


# User configuration
# source ~/.bash_profile
# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bash_profile.pre.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.pre.bash"
# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}":(npm prefix -g)/bin
export PATH
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export PATH=$PATH:/Users/hewentao/.npm-global/bin


# HomeBrew
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
# HomeBrew END


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source /Users/Shared/rlm/rlmenvset.sh
source /Users/Shared/rlm/rlmenvset.sh


export "PATH=/usr/local/texlive/2022/bin/universal-darwin:$PATH"
export "MANPATH=/usr/local/texlive/2022/texmf-dist/doc/man:$MANPATH"
export "INFOPATH=/usr/local/texlive/2022/texmf-dist/doc/info:$INFOPATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bash_profile.post.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.post.bash"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/hewentao/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/hewentao/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/hewentao/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/hewentao/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source /Users/Shared/rlm/rlmenvset.sh
export HOMEBREW_BOTTLE_DOMAIN=http://mirrors.aliyun.com/homebrew/homebrew-bottles
export PATH=$PATH:/Users/hewentao/.npm-global/bin
export LEDGER_FILE=~/finance/2022.journal
source /Users/hewentao/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# cmake
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"
export PATH="/usr/local/opt/llvm/bin:$PATH"
LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"

export PATH="/usr/local/Cellar/cmake/3.24.1/bin:$PATH"
export PATH="/usr/local/Cellar/gtk+3/3.24.34/bin:$PATH"
export PATH="/usr/local/Cellar/libffi/3.4.2:$PATH"


# alias gcc='gcc-11'
# alias cc='gcc-11'
# alias g++='g++-11'
# alias c++='c++-11'

alias vtp='lvim ~/.main.taskpaper'
alias otp='open ~/.main.taskpaper'
alias s='neofetch'
alias wttr='curl wttr.in'
alias f="top -l 1 | head -n 10 | grep PhysMem" # 查看可用内存
alias p="sudo purge" # 整理释放内存
alias v="export http_proxy=socks5://127.0.0.1:1086;export https_proxy=socks5://127.0.0.1:1086" # 终端设置翻墙（走shadowsocks)
alias vc="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890" # 终端设置翻墙(走ClashX)
alias nv="unset http_proxy; unset https_proxy;" # 终端设置不翻墙
alias ip="curl cip.cc" # 查看ip和是否翻墙
alias ll='ls -lh'
alias la='ls -a'
alias x='unar'
alias bt='blueutil --power'
alias wifi='networksetup -setairportpower en0'
alias tnew="tmux new -s"
alias tmain="tmux at -t major"
alias ytd="youtube-dl"
alias lg='lazygit'
alias ra='ranger'
alias cat='ccat --bg=dark'
alias cl='open -n"$(IFS=$" && find"${HOME}/Library/Application Support/JetBrains/Toolbox/apps/CLion" -iname clion.app | head -1)"'
alias ia='open -n"$(IFS=$" && find"${HOME}/Users/hewentao/Applications/iA\ Writer.app " -iname iA\ Writer.app | head -1)"'
alias lv='lvim'
alias o='open'
alias o.='open .'
alias gcc151="gcc -O2 -Werror -Wall -Wextra -Wconversion -Wno-unused-result -Wvla -pedantic -std=c11"
alias g++OGL="g++ -std=c++17 -framework OpenGL -framework GLUT"



git config --global http.proxy "socks5://127.0.0.1:1086"
git config --global https.proxy "socks5://127.0.0.1:1086"

# Fig post block. Keep at the bottom of this file.
export PATH="/usr/local/opt/llvm/bin:$PATH"

#find-in-file - usage: fif <searchTerm>
fif() {
  if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
  rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"
}
export FZF_DEFAULT_OPTS=" \
--height 80% \
--reverse \
--border \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"





function proxy_on() {
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    export http_proxy="http://127.0.0.1:7890"
    export https_proxy=$http_proxy
    #export all_proxy=socks5://127.0.0.1:7890 # or this line
    echo -e "已开启代理"
}

function proxy_off(){
    unset http_proxy
    unset https_proxy
    echo -e "已关闭代理"
}


export EDITOR=/Users/hewentao/.local/bin/lvim

eval "$(starship init zsh)"
# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"

eval `ssh-agent`
ssh-add

