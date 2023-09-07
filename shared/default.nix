{ pkgs
, ...
}:

{
  nixpkgs = import ./nixpkgs.nix;

  home-manager = {
    useGlobalPkgs = true;
    users = {
      mamcx = { pkgs, ... }: {
        home = {
          inherit (pkgs) stateVersion;
          packages = import ./packages.nix { inherit pkgs; };
          shellAliases = (import ./aliases.nix { inherit pkgs; }).shell;
        };
        programs = import ./programs.nix { inherit pkgs; };
      };
    };
  };
}
