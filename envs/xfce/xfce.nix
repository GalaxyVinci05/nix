{ pkgs-stable, ... }: {
    services.xserver = {
      enable = true;
        desktopManager = {
          xterm.enable = true;
          xfce.enable = true;
      };
    };
    
    services.displayManager.defaultSession = "xfce";
    services.displayManager.ly.enable = true;
    xdg.portal = {
      enable = true;
      extraPortals = with pkgs-stable; [ xdg-desktop-portal-gtk ];
    };
}
