{ pkgs-stable, ... }: {
    services.xserver = {
      enable = true;
        desktopManager = {
          xterm.enable = false;
          xfce.enable = true;
      };
    };
    
    services.displayManager.defaultSession = "xfce";
    xdg.portal = {
      enable = true;
      extraPortals = with pkgs-stable; [ xdg-desktop-portal-gtk ];
    };
}
