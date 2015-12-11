export BASH_CONFIG_PATH=~/.bash_profile

export PS1="\W $ "

export SANTAFE_HOME=/Users/andyc/projects/santafe
export BACKEND_HOME=/Users/andyc/projects/wealthfront-backend
export BACKEND_DIR=$BACKEND_HOME
export TAOS_HOME=/Users/andyc/projects/taos
export KLIP_HOME=/Users/andyc/projects/klipfolio-export
export SHINY_HOME=/Users/andyc/projects/shiny-dashboards
export DESIGN_HOME=/Users/andyc/projects/patterns
export ROSWELL_HOME=/Users/andyc/projects/roswell
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$SANTAFE_HOME/script/pngcrush.sh:$PATH"
export PATH="$(brew --prefix git)/bin:$PATH"
eval "$(rbenv init -)"
source ~/git-completion.bash

alias bp="vim ~/.bash_profile"
alias br=". ~/.bash_profile"

alias l="ls -lh"
alias la="ls -lah"
alias lrt="ls -lrth"

alias air="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"
alias wf="networksetup -setairportnetwork en0"
alias wfn="networksetup -setairportpower en0 on"
alias wff="networksetup -setairportpower en0 off"

alias sfe="cd $SANTAFE_HOME"
alias back="cd $BACKEND_HOME"
alias taos="cd $TAOS_HOME"
alias klip="cd $KLIP_HOME"
alias shiny="cd $SHINY_HOME"
alias design="cd $DESIGN_HOME"
alias roswell="cd $ROSWELL_HOME"

alias glados="ssh glados.wlth.fr"

alias ga="git add -p"
alias gb="git branch"
alias gc="git commit -m"
alias gd="git diff"
alias gl="git log"
alias go="git checkout master"
alias gp="git pull"
alias gs="git status"
alias gt="git stash"
alias gtl="git stash list"
alias gmm="git merge master"
alias gcb="git checkout -b"
alias gcp="git checkout -p"
alias grh="git reset HEAD ."
alias gpo="git push origin "
alias gall="git add -A"
alias gxx="git checkout -- ."
alias gc-="git checkout -"
alias rmfake="git checkout app/views/fake"

alias cs="~/changed_specs"

alias ud="sudo make bundler && sudo make npm"
alias rh="rbenv rehash"

alias fs="sudo forego start"
alias rc="bundle exec rails c"
alias rr="bundle exec rake routes"
alias ms="./moarspec"

alias taoss="./mvn-exec $BACKEND_HOME rails s -p 3001"
alias taosc="./mvn-exec $BACKEND_HOME rails c"
alias taost="./mvn-exec $BACKEND_HOME rspec"
alias taosr="./mvn-exec $BACKEND_HOME rake routes"

alias red="bash ~/red"

alias tl="tmux list-sessions"
alias ta="tmux attach -t"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias emacs="/usr/local/Cellar/emacs/24.5/Emacs.app/Contents/MacOS/Emacs -nw"

# Add GHC 7.10.2 to the PATH, via https://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.10.2.app"
if [ -d "$GHC_DOT_APP" ]; then
  export PATH="${HOME}/.local/bin:${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

export SC_CLIENT_ID="34bf73c0f03752169bc7f0b45a2d6b5b"

alias yt="mpsyt"
alias sc="ruby ~/misc/soundcloud2000/bin/soundcloud2000"
