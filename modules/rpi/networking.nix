{
  networking = {
    networkmanager.enable = true;
    hostName = "rpi";

    interfaces.eth0.ipv4.addresses = [ {
      address = "192.168.1.3";
      prefixLength = 24;
    } ];

    defaultGateway = "192.168.1.1";
    nameservers = [ "1.1.1.1." "1.0.0.1" ];

    firewall = {
      enable = true;
      allowedTCPPorts = [ 80 25565 7777 7776 ];
      allowedUDPPorts = [ 25565 ];
    };
  };
}
