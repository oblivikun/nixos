{ config, pkgs, lib, nixpkgs, ... }:
{
users.users.erel.packages = with pkgs; [
  obs-studio
  webcamoid
  ffmpeg
  
];
}
