{
  services = {
    xserver.enable = true;
    desktopManager.plasma6.enable = true;

    displayManager = {
      # defaultSession = "plasma";
      sddm = {
        enable = true;

        wayland = {
          enable = false;
          # compositor = "kwin";
        };
      };
    };
  };
}
