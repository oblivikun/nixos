{ config, pkgs, lib, nixpkgs, ... }:
{
time.timeZone = "America/Toronto";

  # Select internationalisation properties.
i18n.defaultLocale = "en_CA.UTF-8";
}
