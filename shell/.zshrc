# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# .zshrc
ZSH_BASE=$HOME/.dotfiles

source $ZSH_BASE/antigen/antigen.zsh

antigen use oh-my-zsh

# terminal stuff
antigen bundle git
antigen bundle pip
antigen bundle git-extras
antigen bundle web-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle z

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
antigen theme https://github.com/romkatv/powerlevel10k
powerlevel10k

# Apply the antigen stuff
antigen apply

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$ZSH_HOME/shell/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $ZSH_HOME/shell/.p10k.zsh ]] || source $ZSH_HOME/shell/.p10k.zsh
