
export PS1="\u:\w\$ "
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH=$PATH

#aliases

#bash
alias ebash='subl ~/.bash_profile'
alias sbash='source ~/.bash_profile'

# virtual envs
alias virtual_dh='source ~/.virtualenvs/DH_3.6.8/bin/activate'
alias venvs="echo "virtual_dh""


# git commands
alias gpom='git push origin master'
alias gcm='git comitt -m'
alias gl='git log'
alias gs='git status'

# pip commands
alias piu='pip install -U'
alias pi='pip install'
alias pf='pip freeze'
alias pfreq='pip freeze > requirements.txt'

#functions
function mkvenv() {
	read -p "Enter venv name:" name
	python3 -m venv ~/.virtualenvs/$name
}