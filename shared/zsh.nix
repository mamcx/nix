{ pkgs }:

{
  enable = true;
  enableAutosuggestions = true;
  enableCompletion = true;
  syntaxHighlighting.enable = true;
  history = {
    expireDuplicatesFirst = true;
    ignoreDups = true;
    ignoreSpace = true; # ignore commands starting with a space
    save = 20000;
    size = 20000;
    share = true;
  };
  autocd = false;
  initExtra = (builtins.readFile ./scripts/init.sh);
}
