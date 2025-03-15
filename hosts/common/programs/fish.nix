{ pkgs-stable, ... }: {
  programs.fish = {
    enable = true;
    package = pkgs-stable.fish;
  };
}
