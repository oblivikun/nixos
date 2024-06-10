# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, nixpkgs, inputs, ... }:


 
let
    sha256 = "1vfaiyh5k634m5jmc2fj8k2fzy85f7v5l55zhi2kx200sy3icgsb";
  home-manager = builtins.fetchTarball {
    url = "https://github.com/nix-community/home-manager/archive/master.tar.gz";
    sha256 = sha256;
  };
in

# let
#   nixvim = pkgs.fetchFromGitHub {
#     url = "https://github.com/nix-community/nixvim";
#     # If you are not running an unstable channel of nixpkgs, select the corresponding branch of nixvim.
#     # ref = "nixos-23.05";
#       narHash = "sha256-1pvid8k53hppwk8wfxpwhy7rik6zjjawjy3pxhyg9qb2g168gasl";
#   });
# in

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      (import "${home-manager}/nixos")
      

    # nixvim.nixosModules.nixvim
      ./system/bootloader.nix
   #   ./editors/emacs.nix
      ./editors/nixvim/nixvim.nix
 #     ./gaming/prismlauncher.nix
 #     ./gaming/recording.nix
      ./wm/xmonad/xmonad.nix
      ./wm/exwm/exwm.nix
      ./de/sddm/sddm.nix
      ./X.nix
./fonts/firacode.nix
      ./de/xfce/xfce.nix
      ./system/locale.nix
      ./system/networking.nix
      ./system/print.nix
      ./system/pulseaudio.nix
      ./packages/firefox.nix
      ./users/erel/home.d/git.nix
      ./packages/system.nix
      ./users/erel/erel.nix
      ./users/erel/home.d/home.nix
      ./users/erel/home.d/wallpaper.nix
      ./users/erel/home.d/gtk.nix
      ./users/erel/home.d/starship.nix
      ./users/erel/home.d/korny.nix
      ./users/erel/home.d/tmux.nix
      ./users/erel/home.d/dunst.nix
#./home.nix
    ];

  # Bootloader.
#No these arent my passwords, nice try though:D
users.users.root.hashedPassword = "$y$j9T$wR/RZKlhvtWiG.cSY65rD/$uGim5UC0uzWevpWfeBBH4Fmh923FChWsC/khvTVnsN2";
users.users.erel.hashedPassword = "$y$j9T$zSThQ1Rmmb9R9I3i/8esz.$UrJTYAeKT/kw3P3aQlaxL2AoAfJYS4SRlOcYTEd6oR8";




#  services.emacs.package = pkgs.emacs-unstable;




  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking

  # Set your time zone.
 

  # Enable the X11 windowing system.

  # Enable the XFCE Desktop Environment.




  # Configure keymap in X11


#services.xserver = {
 #   layout = "us";
  #  xkbVariant = "";
  #};

  # Enable CUPS to print documents.

  # Enable sound with pipewire.


# hardware.pulseaudio.enable = true;
#hardware.pulseaudio.support32Bit = true;    # Optional: Enable if you need compatibility with 32-bit applications. 
#services.pipewire = {
 # enable = true;
 # alsa.enable = true;
 # alsa.support32Bit = true;
 # pulse.enable = true;
  # If you want to use JACK applications, uncomment this
  #jack.enable = true;
#};
  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;
# Define a user account. Don't forget to set a password with ‘passwd’.


  environment.persistence."/persistent" = {
    hideMounts = true;
    directories = [
      "/var/log"
"/var/spool"
      "/etc/nixos"
      "/var/lib/bluetooth"
      "/var/lib/nixos"
      "/var/lib/systemd/coredump"
      "/etc/NetworkManager/system-connections"
      { directory = "/var/lib/colord"; user = "colord"; group = "colord"; mode = "u=rwx,g=rx,o="; }
    ];
    files = [
    #  "/etc/machine-id"
      { file = "/var/keys/secret_file"; parentDirectory = { mode = "u=rwx,g=,o="; }; }
    ];
    users.erel = {
      directories = [
        "Downloads"
        "Music"
".xmonad"
        "Pictures"
        "Documents"
        "nixos"
"roam"
        ".mozilla"
        ".emacs.d"
        ".minecraft"
        ".local/share/PrismLauncher"
        ".local/share/nyxt"
        ".config/termonad"
".config/hypr"
".config/gh"
".config/rofi"
        ".cache/termonad"
".cache/mesa_shader_cache"
".cache/xmonad"
        ".ssh"
        "Videos"
        { directory = ".gnupg"; mode = "0700"; }
        { directory = ".nixops"; mode = "0700"; }
        { directory = ".local/share/keyrings"; mode = "0700"; }
        ".local/share/direnv"
      ];
      files = [
        ".screenrc"
".authinfo"
        ".gnus.el"
"agenda.org"      
  ".profile"
".gitconfig"
      ];
    };
  };

  

  # Install firefox.
 # programs.firefox.enable = true;

  # Allow unfree packages

  # List packages installed in system profile. To search, run:
  # $ nix search wget


  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?

}
