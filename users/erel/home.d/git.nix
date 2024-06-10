{ config, pkgs, lib, nixpkgs, ... }:
{
  home-manager.users.erel = { pkgs, config, ...}: {
    programs.git = {
    userName  = "oblivikun";
    userEmail = "dudepog8@gmail.com";
    };
    };
}
