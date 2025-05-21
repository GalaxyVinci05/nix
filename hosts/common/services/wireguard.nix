{
  networking = {
    firewall.allowedUDPPorts = [ 59820 ]; # Clients and peers can use the same port, see listenport

    # Enable WireGuard
    wireguard.enable = true;
    wg-quick.interfaces = {
      # "wg0" is the network interface name. You can name the interface arbitrarily.
      wg0.configFile = "/etc/wireguard/wg0.conf";  # metamc
      # wg1.configFile = "/etc/wireguard/wg1.conf";  # protonvpn
    };
  };

  # systemd.services."wg-quick@wg0" = {
  #   enable = true;
  #   description = "WireGuard via wg-quick";
  #   after = [ "network.target" ];
  #   wants = [ "network-online.target" ];
  #   wantedBy = [ "nulti-user.target" ];
  #   serviceConfig = {
  #     Type = "oneshot";
  #     RemainAfterExit = "yes";
  #     Restart = "always";

  #     ExecStart = "${pkgs.wireguard-tools}/bin/wg-quick up wg0";
  #     ExecStop = "${pkgs.wireguard-tools}/bin/wg-quick down wg0";
  #   };
  # };
}
