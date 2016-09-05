alias ll='ls -al'
alias g='git'
alias gip='curl globalip.me'

# 環境変数
export LANG=ja_JP.UTF-8
export LC_ALL='ja_JP.UTF-8'

# 補完
# autoloadでシェル関数を自動読込
autoload -U compinit
compinit
# コマンド予測補完
#autoload predict-on
#predict-on

# 色を使用出来るようにする
autoload -Uz colors
colors

# プロンプト
case ${USERNAME} in
'root')
   PROMPT="%{$fg[magenta]%}%n%(!.#.$)%{$reset_color%} "
   PROMPT2="%{$fg[green]%}%_> %{$reset_color%}"
   SPROMPT="%{$fg[red]%}correct: %R -> %r [nyae]? %{$reset_color%}"
   RPROMPT="%{$fg[cyan]%}[%~]%{${reset_color}%}"
   ;;

'mitsukisugiya')
   PROMPT="%{$fg[green]%}OMEGA%(!.#.$)%{$reset_color%} "
   PROMPT2="%{$fg[green]%}%_> %{$reset_color%}"
   SPROMPT="%{$fg[red]%}correct: %R -> %r [nyae]? %{$reset_color%}"
   RPROMPT="%{$fg[cyan]%}[%~]%{${reset_color}%}"
   ;;

*)
   PROMPT="%{$fg[green]%}%n%(!.#.$)%{$reset_color%} "
   PROMPT2="%{$fg[green]%}%_> %{$reset_color%}"
   SPROMPT="%{$fg[red]%}correct: %R -> %r [nyae]? %{$reset_color%}"
   RPROMPT="%{$fg[cyan]%}[%~]%{${reset_color}%}"
   ;;

esac

# 履歴
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

# cd
setopt auto_cd
setopt auto_pushd
# typo修正
setopt correct
# list_packed
setopt list_packed
# editor
autoload zed
