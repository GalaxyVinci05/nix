{ pkgs, pkgs-stable, ... }:

{
  # List packages specific to studio
  environment.systemPackages = with pkgs; [
    carla
    guitarix
    pipewire.jack
    qpwgraph
    yabridge
    yabridgectl
  ] ++ [
    # Stable
    pkgs-stable.reaper
  ];
}
