{ config, pkgs, lib, nixpkgs, ... }:
{
fonts.packages = with pkgs; [
  (nerdfonts.override { fonts = [ "FiraCode" ]; })
];
}
