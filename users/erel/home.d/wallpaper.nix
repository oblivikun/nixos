{ config, pkgs, lib, nixpkgs, ... }:
let
  # Replace 'your_sha256_hash_here' with the actual SHA256 hash of the file
  sha256 = "1dgr27civjgy8srch5798ifbbknkmfjldhghfbjlmlrq0njk9xcl";

  # Fetch the file from the specified URL
  daywal = builtins.fetchurl {
    url = "https://i.imgur.com/5jYIXFf.jpeg";
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
  home-manager.users.erel = { pkgs, config, ... }: {
  home.file."Pictures/daywal.jpeg".source = daywal;
  home.file. "Pictures/nightwal.jpg".source  = nightwal;
  };
}
