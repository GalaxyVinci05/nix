{ pkgs, ... }: {
  hardware.openrazer.enable = true;

  environment.systemPackages = with pkgs; [
    openrazer-daemon
    polychromatic
    input-remapper
  ];

  users.users.galaxy = {
    extraGroups = [ "openrazer" ];
  };
}
