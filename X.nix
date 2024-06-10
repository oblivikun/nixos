{ config, pkgs, lib, nixpkgs, ... }:
{
  services.xserver.enable = true;
  services.xserver.xkb.layout = "us";
  services.xserver.xkb.variant = "";
  security.polkit.enable = true;
  services.gnome.gnome-keyring.enable = true;
}
