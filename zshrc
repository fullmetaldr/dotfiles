# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/marco/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
#ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="bullet-train"
ZSH_THEME="powerlevel10k/powerlevel10k"

##color plugin
#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(
#  git
#  git-flow
#)

source $ZSH/oh-my-zsh.sh

# User configuration

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

### VISUAL CUSTOMISATION ### 

# Elements options of left prompt (remove the @username context)
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
# Elements options of right prompt
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)



# Add a second prompt line for the command
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Add a space in the first prompt 
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"

# Visual customisation of the second prompt line
#local user_symbol="$"
#if [[ $(print -P "%#") =~ "#" ]]; then
#    user_symbol = "#"
#fi
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"


# Change the git status to red when something isn't committed and pushed
#POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='red'

# Add a new line after the global prompt 
#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

#color plugin
#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Colorise the top Tabs of Iterm2 with the same color as background
# Just change the 18/26/33 wich are the rgb values 
#echo -e "\033]6;1;bg;red;brightness;18\a"
#echo -e "\033]6;1;bg;green;brightness;26\a"
#echo -e "\033]6;1;bg;blue;brightness;33\a"

# Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Add custom-built bins
export PATH="$PATH":~/bin

# Rust toolchain
export PATH="$HOME/.cargo/bin:$PATH"
export RUST_SRC_PATH=$(rustc --print sysroot)/lib/rustlib/src/rust/src
export TARGET_CC=x86_64-linux-musl-gcc
export TARGET_LINUX="x86_64-unknown-linux-musl"

# aliases
alias show_hidden='defaults write com.apple.finder AppleShowAllFiles YES'
alias hide_hidden='defaults write com.apple.finder AppleShowAllFiles NO'
alias space='du -sch *'
alias phd='cd /Users/marco/Library/Mobile\ Documents/com~apple~CloudDocs/Education/PhD'
alias projects="cd /Users/marco/Library/Mobile\ Documents/com~apple~CloudDocs/Projects"
#alias tcp_syn_discover='echo nmap -sP -PS22,3389 $1/24'
alias ssh_home='ssh marco@128.232.60.91'
alias ssh_dev="ssh -K mac214@dev-cpu-mac214.cl.cam.ac.uk"
alias ssh_db="ssh -K mac214@dev-db-mac214.cl.cam.ac.uk"
alias auth="kinit mac214@DC.CL.CAM.AC.UK"
#alias test="cargo test -- --test-threads=1 && say All tests are fucking passing || say Some of the tests did not fucking pass"
alias drive="cd /Users/marco/Library/Mobile\ Documents/com~apple~CloudDocs"
alias open_ports="sudo lsof -i -P -n | grep LISTEN "
alias clippy="cargo +nightly clippy --fix -Z unstable-options"
alias config='/usr/bin/git --git-dir=/Users/marco/.cfg/ --work-tree=/Users/marco'
alias root='cd $(git root)'
alias ls='exa'


#PhD
export MESHSIM_DB_COLLATE="en_US.UTF-8" 
export DB_SERVER=128.232.65.231

# Github

# Git-flow
# source /usr/local/etc/bash_completion.d/git-completion.bash

# AWS
#export LC_ALL=en_US.UTF-8
#export LANG=en_US.UTF-8
#AWS_DEFAULT_PROFILE=marco
#complete -C /usr/local/bin/aws_completer aws

# jenv
#export PATH="$HOME/.jenv/bin:$PATH"
#eval "$(jenv init -)"

#Android Studio
#alias setup_studio='launchctl setenv STUDIO_JDK /Library/Java/JavaVirtualMachines/jdk1.7.0_75.jdk'
#Android SDK
#export NDK_HOME="/Applications/Android Studio.app/Contents/plugins/android-ndk"

### Python
#pyenv
#export PYENV_ROOT=/usr/local/var/pyenv
#export PATH=$PYENV_ROOT:$PATH
#if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
#pyenv-virtualenv
#if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
#python interpreter env. variable for vscode
#export PYENV_INTERPRETER=`pyenv which python`
alias python="/usr/local/opt/python/libexec/bin/python"
alias pip="/usr/local/opt/python/libexec/bin/pip"

#Other tools
export GREP_OPTIONS='--color=auto'

#iTerm settings
#export LC_CTYPE="en_US.UTF-8"
#export CLICOLOR=1
#export LSCOLORS=exfxcxdxcxegedabagacad

#Java SDK
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home/


#functions
tcp_syn_discover() {
  nmap -sP -PS22,3389 $1/24
}

csv() {
    csv_file=$1
    cat $csv_file | column -t -s,
}

img() {
    file=$1
    imgcat --height 30 $file
}

clines() {
    dir=$1
    pattern=$2
    find $1 -type f -iname $2 -exec wc -l {} \; | awk '$1=$1;1' | cut -d' ' -f1 | paste -s -d+ - | bc
}

#rust_test() {
#    test_suite=$1
#    cargo test $test_suite -- --test-threads=1 && say All tests are fucking passing || say Some of the tests did not fucking pass
#}

trim() {
    awk '$1=$1;1'
}


# zsh themes
#Bullet-train
#BULLETTRAIN_CONTEXT_BG=red
#BULLETTRAIN_VIRTUALENV_FG=black
#BULLETTRAIN_PROMPT_ORDER=(
#  git
#  context
#  dir
#  rust
#  virtualenv
#  time
#)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/marco/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/marco/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/marco/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/marco/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/Users/marco/miniforge3/etc/profile.d/mamba.sh" ]; then
    . "/Users/marco/miniforge3/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

