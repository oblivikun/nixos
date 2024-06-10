{ config, pkgs, lib, nixpkgs, ... }:
{
  home-manager.users.erel = { pkgs, config, ... }: {
          gtk = {
      enable = true;
      iconTheme = {
        name = "Papirus";
        package = pkgs.papirus-icon-theme;
      };
          };
    };
}
