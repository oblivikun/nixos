{ config, pkgs, lib, nixpkgs, ... }:
{
nixpkgs.overlays = [
  (import (builtins.fetchTarball {
    url = "https://github.com/nix-community/emacs-overlay/archive/master.tar.gz";
    sha256 = "08plhilf3lihzbr81r32lng5mhxlzkij2gjnazgvh63rgg4lrzxx";
  }))
];
services.emacs = {
package = pkgs.emacs-unstable;
enable = true;
};
}
