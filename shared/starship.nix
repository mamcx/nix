{
  enable = true;
  enableZshIntegration = true;
  settings = {
    add_newline = false;
    command_timeout = 1200;
    memory_usage.disabled = true;
    # format = builtins.concatStringsSep "" [
    #   "$username"
    #   "$hostname"
    #   "$directory"
    #   "$git_branch"
    #   "$git_commit"
    #   "$git_state"
    #   "$git_metrics"
    #   "$git_status"
    #   "$package"
    #   "$python"
    #   "$nix_shell"
    #   "$cmd_duration"
    #   "$jobs"
    #   "$line_break"
    #   "$shell"
    #   "$character"
    # ];    
    username = {
      style_user = "bright-white bold";
      style_root = "bright-red bold";
    };
    hostname = {
      style = "bright-green bold";
      ssh_only = true;
    };    
  };
}
