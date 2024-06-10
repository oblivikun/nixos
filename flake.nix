{
  inputs.darkmatter.url = "gitlab:VandalByte/darkmatter-grub-theme";
  inputs.sddm-sugar-candy-nix.url = "gitlab:Zhaith-Izaliel/sddm-sugar-candy-nix";
  inputs.sddm-sugar-candy-nix.inputs.nixpkgs.follows = "nixpkgs";
  inputs.xmonad = {
    url = "github:xmonad/xmonad";
    flake = true;
  };
  inputs.xmonad-contrib = {
    url = "github:xmonad/xmonad-contrib";
    flake = true;
  };
 # inputs = {
#    impermanence.url = "github:nix-community/impermanence";
 # };
  inputs = {
    impermanence.url = "github:nix-community/impermanence";
  };

  inputs.nixvim.url = "github:nix-community/nixvim";
#inputs.emacs.url = "github:nix-community/emacs-overlay"
  outputs = { self, nixpkgs, darkmatter, sddm-sugar-candy-nix, xmonad, xmonad-contrib, nixvim, impermanence, }@attrs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = attrs;
      modules = [
           ({ pkgs,... }: {
          imports = [
            nixvim.nixosModules.nixvim
          ];
           })
           
          impermanence.nixosModules.impermanence
        darkmatter.nixosModule
        sddm-sugar-candy-nix.nixosModules.default
        ./configuration.nix
        
      ];
    };
  };
}
