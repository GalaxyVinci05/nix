{ pkgs, ... }:

{
  # List asus packages installed in system profile.
  environment.systemPackages = with pkgs; [
    nvtopPackages.intel
  ];
}
