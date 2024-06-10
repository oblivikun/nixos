{ config, pkgs, lib, nixpkgs, ... }:
let
  # Fetch the korny repository using fetchFromGitHub
  kornyRepo = pkgs.fetchFromGitHub {
    owner = "DesantBucie";
    repo = "korny";
    rev = "7da5864fab550b379ccb296563d73d40926464e1"; # Specify the revision you want to fetch, e.g., "master", "main", or a specific commit hash
    sha256 = "14lsv8n44hlnyh67c5lingqbnnc7brxhky9gskmxjcqq94ml44l1"; # Replace with the actual SHA256 hash of the repository
  };
in

{
  home-manager.users.erel = { pkgs, config, ...}: {
    home.file.".korny".source = kornyRepo;
    home.file.".mkshrc".source = ../../../mkshrc;
    home.file.".kshrc".source = ../../../mkshrc;

  };
  
}
