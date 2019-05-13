#show git branch name
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#show only current and parent directory
PROMPT_COMMAND='case $PWD in
        $HOME) HPWD="~";;
        $HOME/*/*) HPWD="${PWD#"${PWD%/*/*}/"}";;
        $HOME/*) HPWD="~/${PWD##*/}";;
        /*/*/*) HPWD="${PWD#"${PWD%/*/*}/"}";;
        *) HPWD="$PWD";;
      esac'
export PS1="\u: \$HPWD\[\033[0;36m\]\$(parse_git_branch)\[\033[00m\] $ "

#export PS1="\u:\w\$ "
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
alias v_dh='source ~/.virtualenvs/DH_3.6.8/bin/activate'
alias slis='source ~/.virtualenvs/superlists/bin/activate'
alias venvs="echo "v_dh" "slis""

# git commands
alias gpom='git push origin master'
alias gpall='git push origin --all'
alias ga.='git add .'
alias gcm='git commit -m'
alias gl='git log'
alias gs='git status'
alias gb='git branch'
alias gcheck='git checkout'

# pip commands
alias piu='pip install -U'
alias pi='pip install'
alias pf='pip freeze'
alias pfreq='pip freeze > requirements.txt'

#better terminal
alias f='open -a Finder ./'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'     

#jupyter commands
alias jl='jupyter lab'
alias jn='jupyter notebook'

#Folder management
zipf () { zip -r "$1".zip "$1" ; }          # zipf:         To create a ZIP archive of a folder
alias numFiles='echo $(ls -1 | wc -l)'      # numFiles:     Count of non-hidden files in current dir

#functions
function mkvenv() {
	read -p "Enter venv name:" name
	python3 -m venv ~/.virtualenvs/$name
}
