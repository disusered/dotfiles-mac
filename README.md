# Dotfiles Mac

> Giving up on a universal dotfiles, instead creating specialized configurations

1. Create SSH key for Github and add the public key to [Github](https://github.com/settings/keys)
  ```sh
  # https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
  ssh-keygen -t ed25519 -C "crosquillas@gmail.com"
  ```

2. Install dependencies and configs
  ```sh
  # Clone repository to home directory
  git clone git@github.com:disusered/dotfiles-mac.git ~/.dotfiles

  # Run bootstrap script
  chmod +x ~/.dotfiles/bootstrap
  ~/.dotfiles/bootstrap
  ```

3. Import PGP keys from Keybase
  ```sh
  # Open Keybase.app and log-in, afterwards run the import script
  chmod +x ~/.dotfiles/keys
  ~/.dotfiles/keys

  # Follow the prompts in Keybase and the CLI. Once done, check that the secret key was imported
  # It should match the `signingkey` in `.gitconfig`
  gpg --list-secret-keys --keyid-format LONG
  ```

4. Configure SSH with 1Password
  ```sh
  # https://developer.1password.com/docs/ssh/git-commit-signing/

  # 1) Open 1Password and go to Preferences > Developer > Use the SSH agent
  # In a terminal, create an SSH config file and copy the contents from 1Password
  mkdir -p ~/.ssh
  touch ~/.ssh/config
  chmod 600 ~/.ssh/config

  # 2) In 1Password, find the SSH key and follow the instructions to configure
  # "Sign Your Git Commits".

  # 3) Add the SSH key to Github as a signing key
  # https://github.com/settings/keys

  # 4) Allow local verification of commits with allowedSigners file
  touch ~/.ssh/allowed_signers
  git config --global gpg.ssh.allowedSignersFile ~/.ssh/allowed_signers
  cat ~/.ssh/id_ed25519.pub | awk '{print $3 " " $1 " " $2}' > ~/.ssh/allowed_signers
  ```

5. Install iTerm2 theme
  ```sh
  # Clone the repo
  git clone git@github.com:catppuccin/iterm.git /tmp/catppuccin
  # Open iTerm2 and go to Preferences > Profiles > Colors > Color Presets > Import
  # Select the `/tmp/catppuccin/colors/catppuccin-{style}.itermcolors` files in the repo
  ```

## TODO

- [ ] 1password + gpg + git over command line
- [x] neovim
- [ ] zsh
