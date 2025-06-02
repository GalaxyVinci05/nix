{
  services = {
    xserver.enable = true;
    desktopManager.plasma6.enable = true;

    displayManager = {
      # defaultSession = "plasma";
      sddm = {
        enable = false;

        # wayland = {
        #   enable = false;
          # compositor = "kwin";
        # };
      };
      ly.enable = true;
    };
  };
}
