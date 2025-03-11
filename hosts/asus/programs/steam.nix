{
  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
  };

  # Enable gamemode and gamescope for optimizations
  programs.gamemode.enable = true;
  programs.gamescope = {
    enable = true;
    capSysNice = true;
  };
}
