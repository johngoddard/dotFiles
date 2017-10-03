 ###
# Do not place configuration here.
#
# Because .bash_profile has precedence over .bashrc in Apple computers,
# this file is necessary to guard against creating a .bash_profile and
# accidentally overrideing all of the configuration in .bashrc
#
# All it should do is load .bashrc
###

source "$HOME/.bashrc"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin


alias gcm='git commit -m'
alias gaa='git add -A'
alias gco='git checkout'
alias gs='git status'
alias gb='git branch'
alias gd='git diff'
alias gdc='git diff --cached'
alias gpo='git push -u origin master'
alias gp='git push'
alias gpr='git pull --rebase'
alias grh='git reset --hard'
alias gl='git log'
alias gds='git diff --staged'
alias gi='git init'
alias "clone" = "git clone"
alias be='bundle exec'
alias ber='bundle exec rspec'
alias bi='bundle install'
alias ..='cd ..'
alias a.='atom .'
alias dk='cd ~/Desktop'
alias gauth='git filter-branch -f --env-filter "GIT_AUTHOR_NAME='John Goddard'; GIT_AUTHOR_EMAIL='johngoddard243@gmail.com'; GIT_COMMITTER_NAME='John Goddard'; GIT_COMMITTER_EMAIL='johngoddard243@gmail.com';" HEAD'
alias rc='rails c'
alias rdbc='rake db:create'
alias rdbd='rake db:drop'
alias rdbm='rake db:migrate'
alias rdbr='rake db:reset'
alias rdbs='rake db:seed'
alias rr='bundle exec rake routes'
alias rs='rails s'
alias cgrn='create-github-repo --name'

alias chrome="open -a 'Google Chrome'"
alias mvi="open -a MacVim.app $1"

alias ns='npm start'
alias ni='npm install'
alias nis='npm install --save'

alias ls='ls -GFh'

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
