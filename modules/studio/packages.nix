{ pkgs, pkgs-legacy, ... }:

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
    pkgs-legacy.lmms
    pkgs-legacy.wineWowPackages.stable
    pkgs-legacy.yabridge
    pkgs-legacy.yabridgectl
  ];
}
