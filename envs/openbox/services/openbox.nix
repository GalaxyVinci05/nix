{ pkgs-stable, ... }: {
  services.xserver.windowManager.openbox.enable = true;
  services.displayManager.ly.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs-stable; [ xdg-desktop-portal-gtk ];
  };
}
