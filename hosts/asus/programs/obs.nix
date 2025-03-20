{ pkgs-stable, ... }: {
  programs.obs-studio = {
    enable = true;
    enableVirtualCamera = true;
    plugins = with pkgs-stable.obs-studio-plugins; [
      obs-vkcapture
      obs-pipewire-audio-capture
      obs-multi-rtmp
    ];
    package = pkgs-stable.obs-studio;
  };
}
