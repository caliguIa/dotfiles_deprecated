{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs;
    [ _1password
      alacritty
      atuin
      aria
      bat
      bottom
      cmake
      colima
      discord
      docker
      dolphin-emu
      du-dust
      eslint_d
      eza
      fd
      ffmpeg
      fnm
      fzf
      gh
      git
      gitui
      go
      (google-cloud-sdk.withExtraComponents [google-cloud-sdk.components.cloud-datastore-emulator])
      grandperspective
      helix
      htop
      iina
      image_optim
      jetbrains.webstorm
      jq
      keka
      less
      lua
      neofetch
      neovim
      ngrok
      nushell
      prettierd
      python3
      raycast
      ripgrep
      rustup
      slack
      skhd
      spotify
      spotifyd
      spotify-tui
      starship
      stats
      stow
      stylua
      terraform
      tmux
      tmuxinator
      tokei
      transmission
      utm
      vscode
      wezterm
      wget
      xplr
      yarn
      zellij
    ];

  nixpkgs.config.allowUnfree = true;

  # Use a custom configuration.nix location.
  # $ darwin-rebuild switch -I darwin-config=$HOME/.config/nixpkgs/darwin/configuration.nix
  # environment.darwinConfig = "$HOME/.config/nixpkgs/darwin/configuration.nix";

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  services.skhd.enable = true;
  #services.karabiner-elements.enable = true;

  # nix.package = pkgs.nix;

  # Create /etc/zshrc that loads the nix-darwin environment.
  programs.zsh.enable = true;  # default shell on catalina
  # programs.fish.enable = true;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;
}
