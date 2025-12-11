{ pkgs-legacy, ... }: {
  programs.fish = {
    enable = false;
    package = pkgs-legacy.fish;
  };
}
