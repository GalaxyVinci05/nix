{ inputs, pkgs, ... }: {
  programs.niri = {
    enable = true;
    useNautilus = false;
  };
}
