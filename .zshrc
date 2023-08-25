# THEME
ZSH_THEME="cobalt2"

# Adding PSQL
export PATH="/opt/homebrew/opt/postgresql@12/bin:$PATH"

# Yarn global packages
export PATH="$PATH:$HOME/.yarn/bin"

# Disable Husky checks
export HUSKY=0

# Aliases
alias code="code-insiders"
alias sz="source ~/.zshrc"
alias cz="code-insiders ~/.zshrc"
alias ff="node /Users/philipandreaskingo/repos/ff-setter/dist/cli.js"
alias daily_upgrade="brew upgrade && brew upgrade --cask && omz update"
alias gpn="deno run ~/scripts/get-payment-name.ts"

# pnpm
export PNPM_HOME="/Users/phillipkingo/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Z configuration
[ -f ~/bin/z.sh ] && source ~/bin/z.sh

# pnpm
export PNPM_HOME="/Users/phillipkingo/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
