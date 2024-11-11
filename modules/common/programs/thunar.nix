{ pkgs, ... }: {
  programs.thunar = {
    enable = true;
    plugins = with pkgs.xfce; [
      thunar-archive-plugin
    ];
  };

  # Enable GNOME virtual filesystem
  services.gvfs.enable = true;
  # Enable tumbler for icon previews
  services.tumbler.enable = true;
}
