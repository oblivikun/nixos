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
let
  # Replace 'your_sha256_hash_here' with the actual SHA256 hash of the file
  sha256 = "05p5agm742yr5p6hgg7ri7icdxnqw6as7csmn0i562b2gsxz2sj7";

  # Fetch the file from the specified URL
  daywal = builtins.fetchurl {
    url = "https://i.pinimg.com/originals/a8/63/2a/a8632a9f86d800a8dd5a7f74a1f10e8f.jpg";
    sha256 = sha256;
  };
in
let
  # Replace 'your_sha256_hash_here' with the actual SHA256 hash of the file
  sha256 = "067xvlgvafkr7k6fzqrlpy9827wlxgiivrblx93i0fn5jbik1395";

  # Fetch the file from the specified URL
  nightwal = builtins.fetchurl {
    url = "https://c4.wallpaperflare.com/wallpaper/29/790/348/triangle-minimalism-solarized-colorscheme-wallpaper-preview.jpg";
    sha256 = sha256;
  };
in
{
 home-manager.backupFileExtension = "back";
home-manager.users.erel = { pkgs, config, ... }: {
  home.stateVersion = "23.11";
  
  home.packages = [ pkgs.screen pkgs.vesktop];
    gtk = {
      enable = true;
      iconTheme = {
        name = "Papirus";
        package = pkgs.papirus-icon-theme;
      };
    };
  programs = {





   starship = { enable = true;
       settings = {
         add_newline = true;
         username = {
           style_user = "green bold";
         style_root = "red bold";
         format = "Oblivikun[$user]($style) ";
         disabled = false;
};
  hostname = {
         ssh_only = false;
         format = " Oblivikun on [Nix󱄅s ](bold yellow)";
         trim_at = ".";
           disabled = false;

         };
         character = {
success_symbol = "[󰘧](bold green)";     
error_symbol = "[✗](bold red)";
         };
         directory = {
           read_only = " ";
truncation_length = 10;
truncate_to_repo = true; 
  style = "bold italic blue";
         };
         cmd_duration = {
min_time = 4;
show_milliseconds = false;
disabled = false;
style = "bold italic red";

         };
         git_branch = {
   
symbol = " ";
         };
   
       };
    };
  };
    home.file.".mkshrc".source = ./mkshrc;

  
  home.file.".korny".source = kornyRepo;
  home.file."Pictures/daywal.jpg".source = daywal;
  home.file. "Pictures/nightwal.jpg".source  = nightwal;

};
}
