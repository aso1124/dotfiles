alias keepass='mono /Users/aso1124/Documents/KeePass-2/KeePass.exe'
alias work='cd /Users/aso1124/Documents/work'
#alias gith='cd /Users/aso1124/Documents/work/git'

source ~/.local/bin/bashmarks.sh

parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ →\ \1/'
}
 
export PS1='\u\[\e[1;37m\]@\[\e[1;32m\]\h\[\e[1;37m\]:\[\e[1;31m\]\W\[\e[1;33m\]$(parse_git_branch)\[\e[0;39m\] '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'
export PATH=$PATH:/Users/aso1124/bin:/usr/local/Cellar/ruby/1.9.3-p0/bin
