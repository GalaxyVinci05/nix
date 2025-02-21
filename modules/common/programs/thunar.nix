{ lib, pkgs, ... }: {
  programs.thunar = {
    enable = true;
    plugins = with pkgs.xfce; [
      thunar-archive-plugin
    ];
  };

  # Enable GNOME virtual filesystem
  services.gvfs = {
    enable = true;
    package = lib.mkForce pkgs.gnome.gvfs;
  };
  # Enable tumbler for icon previews
  services.tumbler.enable = true;
}
