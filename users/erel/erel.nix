{ config, pkgs, lib, nixpkgs, ... }:
{
#  programs.fish.enable = true;
users.users.erel = {
    isNormalUser = true;
    description = "erel";
#initialPassword = "erel";    
        shell = pkgs.oksh;
        extraGroups = [ "networkmanager" "wheel" "audio" "video" ];
        
    packages = with pkgs; [
      #  thunderbird
      zellij
     btop
      github-cli
      flameshot
ani-cli
nyxt
fish
rofi   
feh
pamixer
 ];
  };
}
