{ pkgs, pkgs-legacy, pkgs-stable, ... }:

{
  # List packages specific to studio
  environment.systemPackages = with pkgs; [
    audacity
    guitarix
    # kdePackages.kdenlive
    pipewire.jack
    qpwgraph
    reaper
    winetricks
    zrythm
  ] ++ [
    pkgs-stable.lmms
    pkgs-legacy.wineWowPackages.stable
    pkgs-legacy.yabridge
    pkgs-legacy.yabridgectl
  ];
}
