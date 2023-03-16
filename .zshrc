PROMPT="%F{green}%B%n@%m%f:%F{blue}%~%f%b > "
export PATH=$HOME/bin:/usr/local/bin:$PATH

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlight/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


con-cip(){
	ssh oq50ecyw@cip1e6.cip.cs.fau.de
}
