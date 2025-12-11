{ pkgs, ... }: {
  programs.fish = {
    enable = false;
    package = pkgs.fish;
  };
}
