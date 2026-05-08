{ pkgs-stable, ... }:

{
  # List packages specific to studio
  environment.systemPackages = with pkgs-stable; [
    alsa-utils
    libcdio
    mpd
    mpv
    pulsemixer
    vlc
    wiremix
  ];
}
