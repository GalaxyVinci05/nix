{ inputs, pkgs, ... }: {
  # Enable display manager
  services.greetd = {
    enable = true;
    settings = rec {
      initial_session = {
        command = "${inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland}/bin/start-hyprland";
        user = "galaxy";
      };
      default_session = initial_session;
    };
  };
}
