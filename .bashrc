# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias e='emacs'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# **********************
# *** CUSTOMIZATIONS ***
# **********************

# for Sybase
# 2012.06.08
# at some point i was having trouble with Sybase and LANG setting
# and using en_US.850 fixed that, but cause other apps to complain
# setting to en_US.UTF-8 fixed the others. will wait to see if
# Sybase complains again.
#export LANG=en_US.850
export LANG=en_US.UTF-8
export LANGUAGE=en_US:en

# setup Sybase environment
if [ -f /home/richs/bin/sybase/SYBASE.sh ]; then
    . /home/richs/bin/sybase/SYBASE.sh
fi

# JAVA
#export JAVA_HOME=/usr
export JAVA_HOME=/usr/lib/jvm/java-7-oracle

# jConnect classpath
export SYBASE_JDBC_CP=/home/richs/bin/classes/jdbc/jconn3.jar

# jTDS classpath
export JTDS_JDBC_CP=/home/richs/bin/classes/jdbc/jtds-1.3.1.jar

# GROOVY 
export GROOVY_HOME=/home/richs/bin/groovy-2.0.5

# GRAILS
#export GRAILS_HOME=/home/richs/bin/grails

# GRIFFON
#export GRIFFON_HOME=/home/richs/bin/griffon

# ANT
export ANT_HOME=/home/richs/bin/ant

# MAVEN
export M2_HOME=/home/richs/bin/maven
export M2=/$M2_HOME/bin

# JETTY
export JETTY_HOME=/home/richs/bin/jetty
export JETTY_CP=$JETTY_HOME/lib/jetty-annotations-9.0.6.v20130930.jar:$JETTY_HOME/lib/jetty-client-9.0.6.v20130930.jar:$JETTY_HOME/lib/jetty-continuation-9.0.6.v20130930.jar:$JETTY_HOME/lib/jetty-deploy-9.0.6.v20130930.jar:$JETTY_HOME/lib/jetty-http-9.0.6.v20130930.jar:$JETTY_HOME/lib/jetty-io-9.0.6.v20130930.jar:$JETTY_HOME/lib/jetty-jaas-9.0.6.v20130930.jar:$JETTY_HOME/lib/jetty-jmx-9.0.6.v20130930.jar:$JETTY_HOME/lib/jetty-jndi-9.0.6.v20130930.jar:$JETTY_HOME/lib/jetty-plus-9.0.6.v20130930.jar:$JETTY_HOME/lib/jetty-proxy-9.0.6.v20130930.jar:$JETTY_HOME/lib/jetty-rewrite-9.0.6.v20130930.jar:$JETTY_HOME/lib/jetty-security-9.0.6.v20130930.jar:$JETTY_HOME/lib/jetty-server-9.0.6.v20130930.jar:$JETTY_HOME/lib/jetty-servlet-9.0.6.v20130930.jar:$JETTY_HOME/lib/jetty-servlets-9.0.6.v20130930.jar:$JETTY_HOME/lib/jetty-util-9.0.6.v20130930.jar:$JETTY_HOME/lib/jetty-webapp-9.0.6.v20130930.jar:$JETTY_HOME/lib/jetty-xml-9.0.6.v20130930.jar:$JETTY_HOME/lib/servlet-api-3.0.jar

# AquaData Studio
export ADS_HOME=/home/richs/datastudio

export SQLITE_HOME=/home/richs/bin/sqlite

# SAXON
export SAXON_HOME=/home/richs/bin/saxon

# HSQLDB
export HSQLDB_HOME=/home/richs/bin/hsqldb
export HSQLDB_LIB=/home/richs/bin/hsqldb/lib

# CVS Version Control Settings
# make CVS use SSH
export CVS_RSH=ssh
# CVS repository
export CVSROOT=richs@hitrepo1.hc.msu.edu:/var/cvs
# -- end cvs settings --

# set prompt
export PS1="\W : "

# set PROMPT_COMMAND so that it is displayed in Gnome terminal title
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'

# DOCBOOK ENVIRONMENTAL VARIABLES
# these are references in documentation build files 
export XALAN_HOME=/home/richs/bin/xalan
export FOP_HOME=/home/richs/bin/fop-1.0
export HTML_STYLESHEET=/home/richs/bin/docbook/custom/html.xsl
export FO_STYLESHEET=/home/richs/bin/docbook/custom/fo.xsl
export DEFAULT_DOC=none



# CLASSPATH
export CLASSPATH=./:$SYBASE_JDBC_CP:$JTDS_JDBC_CP:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$HOME/bin/classes/mail/mail.jar:$XALAN_HOME/xalan.jar:$XALAN_HOME/serializer.jar:$XALAN_HOME/xml-apis.jar:$XALAN_HOME/xercesImpl.jar:$JETTY_CP:$SAXON_HOME/saxon9he.jar:$HSQLDB_LIB/hsqldb.jar
# PATH
export PATH=/usr/local/bin:~/bin:$SYBASE_OCS/bin:$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$GROOVY_HOME/bin:$ANT_HOME/bin:$ADS_HOME:$M2:$SQLITE_HOME:~/elisp:$PATH
