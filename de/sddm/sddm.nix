{ config, pkgs, lib, nixpkgs, ... }:
{
services.displayManager.sddm.sugarCandyNix = {
      enable = true; # This enables SDDM automatically and set its theme to
                     # "sddm-sugar-candy-nix"
      settings = {
        # Set your configuration options here.
        # Here is a simple example:
        Background = lib.cleanSource ../../emacs.jpg;
        ScreenWidth = 1920;
        ScreenHeight = 1080;
        FormPosition = "left";
        HaveFormBackground = true;
        PartialBlur = true;
        # ...
      };
    };
}
