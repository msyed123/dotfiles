# .zshrc
ZSH_BASE=$HOME/.dotfiles

source $ZSH_BASE/antigen/antigen.zsh

antigen use oh-my-zsh

# terminal stuff
antigen bundle git
anitgen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions

# an annoying bit of code to make the plugins work properly across multiple OSes
case `uname` in
	Darwin)
		# commands for OSX go here
		antigen bundle osx
	;;
	Linux)
		# commands for Linux go here
	;;
esac

# the theme makes or breaks the air of looking like you know what you're doing
antigen theme theunraveler

# Apply the antigen stuff
antigen apply


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mamoon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
