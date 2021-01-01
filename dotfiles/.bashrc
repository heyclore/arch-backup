#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

alias keparat='Xephyr -br -ac -noreset -terminate -screen 1280x800 :1 & DISPLAY=:1 startlxde'
#export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/heyclore/.gem/ruby/2.7.0/bin


parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1='$(parse_git_branch)[\u@\h \W]\$ '
