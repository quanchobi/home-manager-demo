{
  description = "Home Manager configuration of yourusername";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs (and other inputs)
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux"; # or "aarch64-linux" / "aarch64-darwin"
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      homeConfigurations."ubuntu" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ ./example-home.nix ];
      };
    };
}
