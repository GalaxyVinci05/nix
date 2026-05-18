{ pkgs, pkgs-stable, ... }:

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
  ] ++ [
    pkgs-stable.lmms
    pkgs-stable.wineWowPackages.stable
    pkgs-stable.yabridge
    pkgs-stable.yabridgectl
  ];
}
