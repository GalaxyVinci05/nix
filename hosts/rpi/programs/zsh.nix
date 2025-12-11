{ pkgs, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    ohMyZsh = {
      enable = true;
      plugins = [
        "git"
        "z"
        "zsh-autosuggestions"
        "zsh-interactive-cd"
      ];
      theme = "robbyrussell";
      custom = "/home/server/.oh-my-zsh/custom";
    };
  };

  environment.systemPackages = with pkgs; [
    zsh-autosuggestions
  ];
}
