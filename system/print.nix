{ config, pkgs, lib, nixpkgs, ... }:
{

  services.printing.enable = true;
  services.avahi = {
  enable = true;
  nssmdns = true;
  openFirewall = true;
};


services.printing.drivers = [ pkgs.hplipWithPlugin pkgs.hplip ];

}
