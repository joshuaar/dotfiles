#export PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad

# export CLICOLOR=1 # color terminal folders
TERM=xterm-color
export PS1="\[\033[0;32m\]∴ \[\033[0;37m\]\w "

function setup_git_prompt {
  local        BLUE="\[\033[0;34m\]"
  local        RED="\[\033[0;31m\]"
  local  LIGHT_RED="\[\033[1;31m\]"
  local      GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local      WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  local    DEFAULT="\[\033[0m\]"

  GIT_PS1_SHOWDIRTYSTATE=1
  GIT_PS1_SHOWUPSTREAM=verbose
  GIT_PS1_SHOWCOLORHINTS=1
  GIT_PS1_SHOWUNTRACKEDFILES=1

  #PS1="\W $BLUE\$(__git_ps1) $DEFAULT\$ "
  PS1=''
  PROMPT_COMMAND='__git_ps1 "\[\033[0;32m\]∴ \[\033[0;37m\]\W"  "\\\$ "'
}

alias ls='ls -GFh'
alias ll='ls -al'
alias avro-tools='java -jar /opt/avro-tools-1.7.7.jar'

eval $(docker-machine env)
eval "$(chef shell-init bash)"

#exports
export SPARK_HOME=/opt/spark-1.5.1-bin
export PATH=$PATH:$SPARK_HOME/bin:/opt/logstash-2.2.2/bin

#shortcuts

function spark-debug() {
spark-shell --driver-class-path `find . -not -name "*jline*" -and -not -name "*scala-lang*" -and -not -name "*apache.spark*" | sed s"/\.\///" | tr "\n" ":" | sed s"/.$//"` --driver-memory 8g --executor-memory 8g --executor-cores 3 $@
}
