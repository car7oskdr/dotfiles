# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Path to your oh-my-bash installation.
export OSH='/home/car7os/.oh-my-bash'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="font"
#OSH_THEME="powerline"
#OSH_THEME="powerline-multiline"

# Uncomment the following line to use case-sensitive completion.
#OB_CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# OMB_HYPHEN_SENSITIVE="false"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you don't want the repository to be considered dirty
# if there are untracked files.
# SCM_GIT_DISABLE_UNTRACKED_DIRTY="true"

# Uncomment the following line if you want to completely ignore the presence
# of untracked files in the repository.
# SCM_GIT_IGNORE_UNTRACKED="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.  One of the following values can
# be used to specify the timestamp format.
# * 'mm/dd/yyyy'     # mm/dd/yyyy + time
# * 'dd.mm.yyyy'     # dd.mm.yyyy + time
# * 'yyyy-mm-dd'     # yyyy-mm-dd + time
# * '[mm/dd/yyyy]'   # [mm/dd/yyyy] + [time] with colors
# * '[dd.mm.yyyy]'   # [dd.mm.yyyy] + [time] with colors
# * '[yyyy-mm-dd]'   # [yyyy-mm-dd] + [time] with colors
# If not set, the default value is 'yyyy-mm-dd'.
# HIST_STAMPS='yyyy-mm-dd'

# Uncomment the following line if you do not want OMB to overwrite the existing
# aliases by the default OMB aliases defined in lib/*.sh
# OMB_DEFAULT_ALIASES="check"

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder

# To disable the uses of "sudo" by oh-my-bash, please set "false" to
# this variable.  The default behavior for the empty value is "true".
OMB_USE_SUDO=true

# To enable/disable display of Python virtualenv and condaenv
OMB_PROMPT_SHOW_PYTHON_VENV=true  # enable
# OMB_PROMPT_SHOW_PYTHON_VENV=false # disable

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  general
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bashmarks
)

# Which plugins would you like to conditionally load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format:
#  if [ "$DISPLAY" ] || [ "$SSH" ]; then
#      plugins+=(tmux-autoattach)
#  fi

source "$OSH"/oh-my-bash.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

#kdr alias
alias update='sudo pacman -Syu --noconfirm'
alias updateyay='yay -Syu --noconfirm'
alias instala='sudo pacman -S'
alias apaga='shutdown now'
alias kping="ping -c 7 archlinux.org"
alias x='exit'
alias v='nvim'
alias vbash='nvim ~/.bashrc'
alias vhypr='cd ~/.config/hypr && nvim'
alias pt='python'
alias pt39='source /home/car7os/python39/bin/activate'
alias pt38='source /home/car7os/python37alejandria/bin/activate'
alias pt37='source /home/car7os/python37/bin/activate'
alias kbash='source ~/.bashrc'
alias ktop='ktops=("glances" "bpytop"); cmd="${ktops[$(shuf -i 0-1 -n 1)]}"; $cmd'
alias fetch='fetchs=("nitch" "rxfetch" "nerdfetch" "neofetch"); cmd="${fetchs[$(shuf -i 0-3 -n 1)]}"; $cmd'
alias velint='speedtest-cli --simple'
alias kcache='sudo pacman -Scc'

# keyboard alias
# hyprland
alias lc='hyprctl switchxkblayout at-translated-set-2-keyboard next'
# others
alias kes="setxkbmap -layout latam"
alias ken="setxkbmap -layout us"

#dir alias
alias 1='cd ../'
alias repos='cd ~/repositories'
alias krepos='cd ~/repositories/kdrepos'
alias dotfiles='cd ~/repositories/kdrepos/dotfiles'
alias dconfig='cd ~/.config'
alias dkitty='cd ~/.config/kitty'
alias dhyp='cd ~/.config/hypr'
#dir podemos alias
alias motor='cd /home/car7os/repositories/podemosProgresar/motor_validaciones'
alias vmotor='cd /home/car7os/repositories/podemosProgresar/motor_validaciones && code .'
alias cliente='cd /home/car7os/repositories/podemosProgresar/cliente'
alias vcliente='cd /home/car7os/repositories/podemosProgresar/cliente && code .'
alias utils='cd /home/car7os/repositories/podemosProgresar/podemos-utils'
alias vutils='cd /home/car7os/repositories/podemosProgresar/podemos-utils && code .'
alias cdc='cd /home/car7os/repositories/podemosProgresar/consultas-circulo-de-credito'
alias vcdc='cd /home/car7os/repositories/podemosProgresar/consultas-circulo-de-credito && code .'
alias sci='cd /home/car7os/repositories/podemosProgresar/sci'
alias vsci='cd /home/car7os/repositories/podemosProgresar/sci && code .'
alias producto='cd /home/car7os/repositories/podemosProgresar/producto'
alias vproducto='cd /home/car7os/repositories/podemosProgresar/producto && code .'
alias podemos='cd /home/car7os/repositories/podemosProgresar/podemos'
alias vpodemos='cd /home/car7os/repositories/podemosProgresar/podemos && code .'
alias mambu='cd /home/car7os/repositories/podemosProgresar/mambupy'
alias vmambu='cd /home/car7os/repositories/podemosProgresar/mambupy && code .'
alias mamtools='cd /home/car7os/repositories/podemosProgresar/mambu-tools'
alias vmamtools='cd /home/car7os/repositories/podemosProgresar/mambu-tools && code .'
alias daniel='cd /home/car7os/repositories/podemosProgresar/daniel'
alias vdaniel='cd /home/car7os/repositories/podemosProgresar/daniel && code .'
alias identi='cd /home/car7os/repositories/podemosProgresar/identity-management'
alias videnti='cd /home/car7os/repositories/podemosProgresar/identity-management && code .'
alias vorgani='cd /home/car7os/repositories/podemosProgresar/organigrama && code .'
alias organi='cd /home/car7os/repositories/podemosProgresar/organigrama'
alias alejandria='cd /home/car7os/repositories/podemosProgresar/alejandria'
alias valejandria='cd /home/car7os/repositories/podemosProgresar/alejandria && code .'
alias reportes='cd /home/car7os/repositories/podemosProgresar/reportes'
alias feature='cd /home/car7os/repositories/podemosProgresar/feature-toggles'
alias rpodemos='cd /home/car7os/repositories/podemosProgresar'
#gitkdr alias
alias develop='git fetch upstream && git merge upstream/develop && git push origin develop'
alias kmain='git fetch upstream && git merge upstream/main && git push origin main'
alias kmaster='git fetch upstream && git merge upstream/master && git push origin master'
alias gitkeder='git config --global user.email "carloscvl@hotmail.com" && git config --global --list'
alias gitpodemos='git config --global user.email "c.vazquez@podemos.mx" && git config --global --list'
alias lg='lazygit'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#export PYTHONPATH to podemos and mambupy
export PYTHONPATH=/opt/mambupy/mambupy/mambupy
export PYTHONPATH=$PYTHONPATH:/opt/podemosprogresar/lib/python
export PATH_WEB=/srv/http
export PATH=$PATH:/home/car7os/liquibase

fetch
