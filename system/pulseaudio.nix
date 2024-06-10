{ config, pkgs, lib, nixpkgs, ... }:
{
sound.enable = true;
  #hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
hardware.pulseaudio.enable = true;
hardware.pulseaudio.support32Bit = true;
}
