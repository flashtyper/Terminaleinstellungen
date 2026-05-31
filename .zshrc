export CLICOLOR=1
export HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
alias ls='ls -lh'
alias appdata="open ${HOME}/library/application\ support/minecraft"
alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
alias venv="source .venv/bin/activate"
alias createvenv="python3 -m venv .venv"

~/Coding/Terminaleinstellungen/check-for-updates.sh

PROMPT="%F{green}%B%n@%m%f:%F{blue}%~%f%b > "
export PATH=$HOME/bin:/usr/local/bin:$PATH
autoload -Uz select-word-style
select-word-style bash

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
bindkey '^[^?' backward-kill-word

dl-mp3(){
	yt-dlp -o "%(title)s.%(ext)s" -f 'ba' -x --audio-format mp3 --audio-quality 0 --postprocessor-args "-ar 44100 -b:a 256k" "$1"
}
showCpuTemp() {
	sudo powermetrics --samplers smc | grep -i "CPU die temperature"
}
showGpuTemp() {
	sudo powermetrics --samplers smc | grep -i "GPU die temperature"
}
convMP4toMP3() {
	ffmpeg -i $1 -b:a 192K -vn $2
}
finde() {
  mdfind -onlyin . -name "${1}"
}
grepr() {
  if [ $# -eq 2 ]
  then
    grep -rni "${1}" "${2}"
  else
    grep -rni "${1}"
  fi
}

startScroll() {
	/Applications/DiscreteScroll.app
}

PATH="/Users/lukas/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/lukas/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/lukas/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/lukas/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/lukas/perl5"; export PERL_MM_OPT;

export PATH="/opt/homebrew/opt/mariadb-connector-c/bin:$PATH"
export PATH="/opt/homebrew/opt/net-snmp/bin:$PATH"
export PATH="/opt/homebrew/opt/net-snmp/sbin:$PATH"

# Created by `pipx` on 2025-06-29 21:45:04
export PATH="$PATH:/Users/lukas/.local/bin"
