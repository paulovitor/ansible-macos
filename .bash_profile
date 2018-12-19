export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

alias md5='md5 -r'
alias md5sum='md5 -r'

export HOST_INTELLIT=189.22.132.82

export PATH=$(brew --prefix openvpn)/sbin:$PATH

eval "$(pyenv init -)"

# alias python='/usr/local/opt/python/libexec/bin/python'
# unalias python