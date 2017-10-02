###########################################################################################
#					Prezto                                            #
###########################################################################################
## Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

###########################################################################################
#					Alias                                             #
###########################################################################################

alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias ll='ls -FGlAhp'
alias cls='clear'


# Add homebrew to the completion path
fpath=("/usr/local/bin" $fpath)


###########################################################################################
#					Options                                           #
###########################################################################################
# why would you type 'cd dir' if you could just type 'dir'?
setopt AUTO_CD

# 10 second wait if you do something that will delete everything.  I wish I'd had this before...
setopt RM_STAR_WAIT

# Case insensitive globbing
setopt NO_CASE_GLOB

# I don't know why I never set this before.
setopt EXTENDED_GLOB

# Incremental search is elite!
bindkey -M vicmd "/" history-incremental-search-backward
bindkey -M vicmd "?" history-incremental-search-forward

# Search based on what you typed in already
bindkey -M vicmd "//" history-beginning-search-backward
bindkey -M vicmd "??" history-beginning-search-forward

# fix TERM for tmux
export TERM=screen-256color
