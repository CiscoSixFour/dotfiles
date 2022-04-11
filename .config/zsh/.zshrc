## ZSHRC BY CISCO64 ##

## Load colors ##
	autoload -Uz colors && colors

## Shell Prompt ##
#	PROMPT='%F{red}⌜%F{yellow}%n%F{red}⌟ %F{green}×%F{blue}%M %F{magenta}%~ %F{cyan}%(?..%F{red}>) '
	PROMPT='%F{red}[%F{yellow}%n%F{blue}x%F{cyan}%M%F{red}] %F{magenta}%~ %F{green}%(?.﬌.%F{red}﬌) '

## Right Side Prompt ##
	RPROMPT='%(?.​.%F{red}💢 %BBAKA!%b)'

## Disable ctrl-s to freeze terminal ##
	stty stop undef	

## Beep? IDK ##
	unsetopt beep

## Lines added by compinstall ##
	zstyle ':completion:*' completer _expand _complete _ignored _match _correct _approximate _prefix
	zstyle ':completion:*' completions set
	zstyle ':completion:*' glob set
	zstyle ':completion:*' list-colors ''
	zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
	zstyle ':completion:*' max-errors 2 numeric
	zstyle ':completion:*' menu select=1
	zstyle ':completion:*' prompt 'Edit'
	zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
	zstyle ':completion:*' substitute set
	zstyle :compinstall filename '/home/cisco/.config/zsh/.zshrc'

# Include Hidden Files ##
	_comp_options+=(globdots)

## Some Extra Stuff IDK Either ##
	zmodload zsh/complist
	autoload -Uz compinit
	compinit

## History Stuff ##
	HISTFILE=~/.cache/zsh/history/.histfile
	HISTSIZE=10000
	SAVEHIST=10000

## Keybind Stuff ##
	bindkey "^[[1;5C" forward-word
	bindkey "^[[1;5D" backward-word
	bindkey '^H' backward-kill-word

## Sources ##
	source /usr/share/doc/mcfly/mcfly.zsh

## Environment Variables ##
	## Themes ##
	#export GTK_THEME=gruvbox-64
	#export QT_QPA_PLATFORMTHEME=qt5ct
	## Set Micro as Default Editor ##
	#export EDITOR=micro
	#export VISUAL=micro
	## Man syntax high-lighting ##
	#export MANPAGER="sh -c 'col -bx | bat -l man -p'"
	## Fix My Micro Fuck Up, And Also Use My Config For Root ##
	#export MICRO_CONFIG_HOME=/home/cisco/.config/micro

## Path Variables ##
	export PATH=$PATH:/home/cisco/Scripts/term-art
	export PATH=$PATH:/home/cisco/Scripts/launchers
	export PATH=$PATH:/home/cisco/Scripts/settings

## Alias ##
	alias lsa="exa -la --icons --no-time --no-filesize"
	alias ls="exa -a --icons"
	alias dragon="dragon-drag-and-drop"
	alias jo="joshuto"

## Syntax Highlighting; should be last. ##
	source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
