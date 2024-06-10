{ config, pkgs, lib, nixpkgs, ... }:
{
services.xserver.windowManager.session = [{
      name = "emacs";
      manage = "none";
      start = ''
        emacs --init-dir /home/erel/nixos/wm/exwm/exwmconf
        waitPID=$!
      '';
    }];
}
