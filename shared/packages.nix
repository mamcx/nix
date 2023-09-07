{ pkgs }:

let
  local = import ./local.nix {
    inherit pkgs;
  };
  
  gitTools = with pkgs.gitAndTools;
    [ diff-so-fancy git-codeowners gitflow ]
    ++ (with pkgs; [
      difftastic
      git-annex
      git-crypt
    ]);

  macTools = with pkgs.darwin.apple_sdk.frameworks; [
    CoreServices
    Foundation
    Security
  ];


  monitoring = with pkgs; [
    btop
    htop
  ];

  basic = with pkgs; [ coreutils findutils zip unzip ];

  misc = with pkgs; [
    curl
    fastlane
    jdk17
    nano
    ngrok
    openssl
    ripgrep
    rsync
    sqlite
    tree
    watchexec
    wget
    zstd
  ];

  nixTools = with pkgs; [
    cachix
  ];

  pythonTools = with pkgs; [ python311 ] ++ (with pkgs.python311Packages; [
    httpie
    pip
  ]);

  rubyTools = with pkgs; [
    ruby
  ];


  jsTools = with pkgs; [
    # nodejs = buildNodeJs {
    #   enableNpm = true;
    # }
  ];

  buildTools = with pkgs; [
    cmake
  ];

  rustTools = with pkgs; [
    # (pkgs.rust-bin.stable.latest.default.override { extensions = [ "rust-src" ]; })
    rustup
  ];

in
local
++ gitTools
++ macTools
++ monitoring
++ basic
++ misc
++ nixTools
++ pythonTools
++ rubyTools
++ jsTools
++ rustTools
++ buildTools