{ pkgs-legacy, ... }: {
  programs.fish = {
    enable = true;
    package = pkgs-legacy.fish;
  };
}
