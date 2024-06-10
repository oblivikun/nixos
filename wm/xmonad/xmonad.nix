{ config, pkgs, lib, nixpkgs, ... }:
{
services.xserver.windowManager.xmonad = {
   enable = true;
   enableContribAndExtras = true;

      config = builtins.readFile ./xmonad.hs;
};
users.users.erel.packages = with pkgs; [
  termonad
  xmobar
];
}
