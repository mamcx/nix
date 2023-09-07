{ pkgs }:

{
  # Fancy replacement for cat
  bat.enable = true;

  # Navigate directory trees
  broot = {
    enable = true;
    enableZshIntegration = true;
  };

  # Easy shell environments
  direnv = {
    enable = true;
    enableZshIntegration = true;

    nix-direnv.enable = true;

    stdlib = ''
      use_riff() {
        watch_file Cargo.toml Cargo.lock
        eval "$(riff print-dev-env)"
      }
    '';
  };

  # Replacement for ls
  exa = {
    enable = true;
    enableAliases = true;
  };

  # Fuzzy finder
  fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  # But of course
  git = import ./git.nix { inherit pkgs; };

  # GPG config
  # gpg.enable = true;

  # Configure HM itself
  home-manager = {
    enable = true;
  };

  # JSON parsing on the CLI
  jq.enable = true;

  # The provider of my shell aesthetic
  starship = import ./starship.nix;

  tmux = import ./tmux.nix;

  zsh = import ./zsh.nix {
    inherit pkgs;
  };
}