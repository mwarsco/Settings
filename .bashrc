# Bash Configuration File
# Michael Warsco

function _vi
{
  gvim $@ &
}

function _man
{
  $@ --help
}

function _ge
{
    /c/Program\ Files\ \(x86\)/GitExtensions/GitExtensions.exe $@ &
}

function _vdiff
{
    gvim -d $@ &
}

export PROMPT_DIRTRIM=4
export VIMRUNTIME="/c/Program Files (x86)/vim/vim80/"
export PS1='\[\033[0m\]\[\033[32m\]\u:\[\033[33m\]\w\[\033[1;34m\]$(__git_ps1)\[\033[0m\]> '

export PATH="$PATH:/c/Program Files (x86)/vim/vim80/"
export PATH="$PATH:/c/Progarm Files (x86)/GitExtensions/"
export PATH="$PATH:/c/Program Files/KDiff3/"
export PATH="$PATH:/c/users/mwarsco/bin/"

alias vi=_vi
alias ge=_ge
alias gc='/c/Program\ Files\ \(x86\)/GitExtensions/GitExtensions.exe commit &'
alias grep='/c/Program\ Files\ \(x86\)/GnuWin32/bin/grep'
alias ob='cd /c/Users/mwarsco/workdir/OB/'
alias wd='cd /c/Users/mwarsco/workdir/'
alias sb='cd /c/Users/mwarsco/workdir/Secondary/SIBlue'
alias db='cd /c/Users/mwarsco/workdir/Secondary/Databases'
alias man=_man
alias ll='ls -al'
alias ls='ls -p'
alias vdiff=_vdiff
alias findf='find . -name'
alias lsd='ls -d */'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias stashPull='git stash -u; git pull origin; git stash pop'
alias gs='git status'
alias insertQuery='python insertQuery.py'

startupScripts () {
echo "Opening Folders for Startup Scripts"
explorer '\\devfileserver\stuff\Infrastructure'
explorer '\\10.20.1.100\installs\AutoRun'
}

__git_complete gitall __git_main
__git_complete hotfix _git_checkout

export NVM_DIR="/c/Users/mwarsco/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
