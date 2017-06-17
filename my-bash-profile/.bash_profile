#export PS1="⚡  "
export PATH="$HOME/.jenv/bin:$PATH"
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[01;32m\] \w\[\033[01;33m\]$(__git_ps1 "(%s)") \[\033[00;35m\]⚡️\[\033[00m\]  '

if ! mount | grep /Users/gianlucap/SOME_MOUNT_DIR > /dev/null; then
  mount -t smbfs //SERVER_PATH /Users/gianlucap/SOME_MOUNT_DIR
fi

#ORACLE for SQL*
export ORACLE_HOME=/Applications/oracle/product/instantclient_64/12.1.0.2.0
export PATH=$ORACLE_HOME/bin:$PATH
export DYLD_LIBRARY_PATH=$ORACLE_HOME/lib

# ls alias for color-mode
alias lh='ls -lhaG'

# lock computer
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias home='cd ~'

# grep with color
alias grep='grep --color=auto'

# reload bash_profile
alias reload='source ~/.bash_profile'

# Gradle
alias gr='./gradlew'

# git config
alias gname='git config --get user.name'
alias gemail='git config --get user.email'
