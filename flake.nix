{
  description = "El malabarista Setup";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin = { url = "github:lnl7/nix-darwin"; inputs.nixpkgs.follows = "nixpkgs"; };
    home-manager = { url = "github:nix-community/home-manager"; inputs.nixpkgs.follows = "nixpkgs"; inputs.utils.follows = "utils"; };
    utils.url = github:gytis-ivaskevicius/flake-utils-plus;
    devenv.url = "github:cachix/devenv"; 
  };

  outputs = { self, nixpkgs, devenv, systems, dev }:
    {
      # dev = dev-config;
      # ci = ci-config;
      # prod = prod-config;
    };  
}
