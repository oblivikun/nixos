{ config, pkgs, lib, nixpkgs, ... }:
  {
    programs.light.enable = true;
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    git
    fastfetch
          github-cli
    xdg-user-dirs
pavucontrol   
wget
pulseaudio
brightnessctl
   libnotify
    xorg.xbacklight
        grim # screenshot functionality
    slurp # screenshot functionality
    wl-clipboard # wl-copy and wl-paste for copy/paste from stdin / stdout
dunst
  ];
  }
  
