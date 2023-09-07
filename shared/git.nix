{ pkgs }:

{
  enable = true;
  userName = "Mario Alejandro Montoya Cortés";
  userEmail = "mamcx@elmalabarista.com";
  package = pkgs.gitAndTools.gitFull;

  includes = [
    
  ];
  delta = { enable = true; };

  lfs = { enable = true; };

  ignores = [
    ".cache/"
    ".DS_Store"
    ".direnv/"
    ".idea/"
    "*.swp"
    ".vscode/"
    "*.log"
    "client/ios/Pods"
  ];
  aliases = (import ./aliases.nix { inherit pkgs; }).git;

  extraConfig = {
    core = {
      editor = "nano";
      whitespace = "trailing-space,space-before-tab";
    };

    pull.rebase = "false";
    rerere.enabled = "true";
    init.defaultBranch = "master";

   "url \"ssh://git@github.com/\"".insteadOf
        = "https://github.com/";
  };
}
