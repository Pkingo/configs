# THEME
ZSH_THEME="shades-of-purple"

# Env varviables
export ZSH="$HOME/.oh-my-zsh"
export GITHUB_ACCESS_TOKEN=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
export HOMEBREW_GITHUB_API_TOKEN=$GITHUB_ACCESS_TOKEN
export GOPRIVATE=github.com/LEGO/*

git config --global url.git@github.com:.insteadOf https://github.com/


# Aliases
alias sz="source ~/.zshrc"
alias cz="nvim ~/repos/configs/.zshrc"
alias daily_upgrade="brew upgrade && brew upgrade --cask && omz update"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Z configuration
# https://github.com/rupa/z
[ -f ~/bin/z.sh ] && source ~/bin/z.sh

# bun completions
[ -s "/Users/phillipkingo/.bun/_bun" ] && source "/Users/phillipkingo/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Go Air 💨
alias air='~/go/bin/air' 

# SAML SETUP
export SAML_USER=philip.kingo@LEGO.com

export AWS_REGION=eu-west-1
export AWS_PROFILE=saml

TEAM=ccm
# saml2aws --skip-prompt configure --idp-provider=AzureAD --url=https://account.activedirectory.windowsazure.com --app-id=dc35ded2-0c12-4834-a716-68a38478de37 --mfa=Auto --username=$SAML_USER -a $TEAM-dev
# saml2aws --skip-prompt configure --idp-provider=AzureAD --url=https://account.activedirectory.windowsazure.com --app-id=2dd793c9-3002-4e62-a9b5-bb2b1be17752 --mfa=Auto --username=$SAML_USER -a $TEAM-qa
# saml2aws --skip-prompt configure --idp-provider=AzureAD --url=https://account.activedirectory.windowsazure.com --app-id=0d3ad928-b911-4876-8427-563fc228a7aa --mfa=Auto --username=$SAML_USER -a $TEAM-pexport PNPM_HOME="/Users/dkphikin/Library/pnpm"
alias aws-dev="saml2aws login -a ccm-dev --force --username=philip.kingo@lego.com --skip-prompt --mfa=Auto --role=arn:aws:iam::266292432049:role/SSO-ccm --session-duration=43200"

plugins=(git)

source $ZSH/oh-my-zsh.sh
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PNPM_HOME="/Users/dkphikin/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Message
echo "Hallo $USER 👋. Everything loaded up 📦"
