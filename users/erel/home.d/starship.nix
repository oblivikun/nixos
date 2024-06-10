{ config, pkgs, lib, nixpkgs, ... }:
{
home-manager.users.erel = { pkgs, config, ... }: {
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
};
}
