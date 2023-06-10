# lang
export LANG=ja_JP.UTF-8

# keybind
# bindkey -v

# prompt
autoload -Uz colors
colors
PROMPT="%{${fg[white]}%}[%~]%{${reset_color}%}
%{${fg[white]}%}$%{${reset_color}%} "
# git ブランチ名を色付きで表示させるメソッド
function rprompt-git-current-branch {
  local branch_name st branch_status

  if [ ! -e  ".git" ]; then
    # git 管理されていないディレクトリは何も返さない
    return
  fi
  branch_name=`git rev-parse --abbrev-ref HEAD 2> /dev/null`
  st=`git status 2> /dev/null`
  if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
    # 全て commit されてクリーンな状態
    branch_status="%F{white}"
  elif [[ -n `echo "$st" | grep "^Untracked files"` ]]; then
    # git 管理されていないファイルがある状態
    branch_status="%F{magenta}?"
  elif [[ -n `echo "$st" | grep "^Changes not staged for commit"` ]]; then
    # git add されていないファイルがある状態
    branch_status="%F{magenta}+"
  elif [[ -n `echo "$st" | grep "^Changes to be committed"` ]]; then
    # git commit されていないファイルがある状態
    branch_status="%F{yellow}!"
  elif [[ -n `echo "$st" | grep "^rebase in progress"` ]]; then
    # コンフリクトが起こった状態
    echo "%F{red}!(no branch)"
    return
  else
    # 上記以外の状態の場合
    branch_status="%F{cyan}"
  fi
  # ブランチ名を色付きで表示する
  echo "${branch_status}[$branch_name]"
}

# プロンプトが表示されるたびにプロンプト文字列を評価、置換する
setopt prompt_subst

# プロンプトの右側にメソッドの結果を表示させる
RPROMPT='`rprompt-git-current-branch`'

# colors
autoload -U colors; colors

# HISTORY
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_dups
setopt share_history

# auto cd command
setopt auto_cd
alias ...='cd ../..'
alias ....='cd ../../..'

# auto pushd command
setopt auto_pushd
setopt pushd_ignore_dups

# completion
autoload -U compinit
compinit
alias ls='ls -l --color=auto'
alias la='ls -al --color=auto'
setopt correct
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

setopt IGNOREEOF

alias so='source'

# setting zmv
autoload -Uz zmv
alias zmv='noglob zmv -W'


# ls command after cd command
chpwd() { ls -ltrG }

# mkdir and cd command at the same time
function mkcd(){
    if [[ -d $1 ]]; then
        echo "$1 already exists!"
        cd $1
    else
        mkdir -p $1 && cd $1
    fi
}

# added by Anaconda3 installer
export PATH="$HOME/anaconda3/bin:$PATH"


# export git editor
export GIT_EDITOR=vim
