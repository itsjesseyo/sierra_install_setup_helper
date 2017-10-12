PATH="$PATH:~/bin"
PATH="$PATH:/Users/${USER}/bin/Android/sdk/platform-tools"

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

export FLASK_APP=app.py
export FLASK_DEBUG=1

alias connect_android="adb connect 10.0.1.140:5555"
alias serve="flask run --host=0.0.0.0"

mkenv(){
	pyenv virtualenv "$1"
	pyenv activate "$1"
}

listenvs(){
	pyenv virtualenvs
}

act(){
	pyenv activate "$1"
}

deact(){
	pyenv deactivate
}

rebash(){
	source ~/.bash_profile
}

#pyenv init command from step #3
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
  echo 'pyenv launched'
fi


