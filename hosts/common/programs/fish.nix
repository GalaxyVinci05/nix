{ pkgs, ... }: {
  programs.fish = {
    enable = false;
    package = pkgs.fish;
  };

  environment.systemPackages = with pkgs; [
    fishPlugins.tide
  ];
}
