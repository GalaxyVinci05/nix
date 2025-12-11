{ pkgs, ... }: {
  programs.zsh = {
    enable = false;
    enableCompletion = false;
    autosuggestions = {
      enable = true;
      strategy = [ "match_prev_cmd" ];
    };
    syntaxHighlighting = {
      enable = true;
      styles = {
        "arg0" = "fg=blue,bold";
        "builtin" = "fg=blue,bold";
        "command" = "fg=blue,bold";
        "commandseparator" = "fg=green";
        "default" = "fg=cyan";
        "globbing" = "fg=cyan";
        "path" = "fg=cyan,underline";
        "precommand" = "fg=magenta,bold";
        "single-hyphen-option" = "fg=cyan";
        "double-hyphen-option" = "fg=cyan,bold";
      };
    };
    ohMyZsh = {
      enable = true;
      plugins = [
        "git"
        "z"
        "zsh-interactive-cd"
      ];
      theme = "lukerandall";
      # custom = "/home/galaxy/.oh-my-zsh/custom";
    };

    interactiveShellInit = with pkgs; ''
      source ${zsh-nix-shell}/share/zsh-nix-shell/nix-shell.plugin.zsh
    '';
  };
}
