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
