{ config, pkgs, lib, nixpkgs, ... }:
{
boot.loader = {
    systemd-boot.enable = false; # Disable systemd-boot
    efi.canTouchEfiVariables = true; # Allow modifying EFI variables
    grub = {
      enable = true; # Enable GRUB
      efiSupport = true; # Enable EFI support
	 devices = [ "nodev" ];
#      version = 2; # Use GRUB version 2
    #  useOSProber = true; # Detect other operating systems
    };

      grub.darkmatter-theme = {
        enable = true;
        style = "nixos";
      };
};
}
