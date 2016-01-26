# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source local aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export PATH=$PATH:/path/to/mybin/:/path/to/mytools/

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
