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

  environment.sessionVariables.__GL_SHADER_DISK_CACHE_SIZE = 12000000000;
  environment.sessionVariables.__GL_SHADER_DISK_CACHE_SKIP_CLEANUP = 1;
}
