# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias refresh_env='source ~/.bashrc' 
alias edit_env='vim ~/.bashrc'

alias pycharm='sh /opt/pycharm-community-2020.3.5/bin/pycharm.sh 2> /home/mverbeek/.pycharm_log &' 
