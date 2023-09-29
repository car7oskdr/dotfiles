export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="bira"
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"


zstyle ':omz:update' mode auto      # update automatically without asking

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 7


# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# kdr aliases
alias kzsh='source ~/.zshrc'
alias x='exit'
alias c='clear'
alias actualiza='sudo apt update && sudo apt upgrade && sudo apt full-upgrade'
alias v='vim'
alias co='code .'
alias credential='cat ~/sens/credentials.txt'
alias pld='cat ~/Documentos/apuntes/pldLunes/pld.txt'
alias kdocker='docker container prune -f && docker volume prune -f && docker image prune -f'
alias cat='batcat'
alias edigitvim='git config --global core.editor vim'
alias edigitcode='git config --global core.editor "code --wait"'
alias mailgith='git config --global user.email "carloscvl@hotmail.com"'
alias mailgitp='git config --global user.email "c.vazquez@podemos.mx"'
# navegacion aliases
alias 1='cd ..'
alias repos='cd ~/repos'
alias krepos='cd ~/repos/kdr'
alias dotf='cd ~/repos/kdr/dotfiles'
alias prepos='cd ~/repos/progresar'
alias cliente='cd ~/repos/progresar/cliente'
alias clienteco='cd ~/repos/progresar/cliente && code .'
alias alejandria='cd ~/repos/progresar/alejandria'
alias alejandriaco='cd ~/repos/progresar/alejandria && code .'
alias progresar='cd ~/repos/podemos/podemos'
alias progresarco='cd ~/repos/podemos/podemos && code .'
alias organigrama='cd ~/repos/progresar/organigrama'
alias organigramaco='cd ~/repos/progresar/organigrama && code .'
alias producto='cd ~/repos/progresar/producto'
alias productoco='cd ~/repos/progresar/producto && code .'
alias motor='cd ~/repos/progresar/motor_validaciones'
alias motorco='cd ~/repos/progresar/motor_validaciones && code .'
# github aliases
alias develop='git fetch upstream && git merge upstream/develop && git push origin develop'
alias kmain='git fetch upstream && git merge upstream/main && git push origin main'
alias kmaster='git fetch upstream && git merge upstream/master && git push origin master'
alias gst='git status'
alias gg='git log --graph --decorate --all'
alias gl='git log'
alias gll="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"
alias go='git log --oneline --decorate'
alias gd='git diff --color'
alias grt='git restore .'
alias gch='git checkout'
alias lg='lazygit'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gbr='git branch'

# enable auto-suggestions based on the history
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    . /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    # change suggestion color
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#999'
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
