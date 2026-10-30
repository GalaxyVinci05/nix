{
  hardware.nvidia.prime = {
    intelBusId = "PCI:00:02:0";
    nvidiaBusId = "PCI:01:00:0";

    offload = {
      enable = true;
      enableOffloadCmd = true;
    };
  };

  services.switcherooControl.enable = true;
}
