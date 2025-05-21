{
  programs.virt-manager.enable = true;

  users.groups.libvirtd.members = [ "your_username" ];

  virtualisation = {
    libvirtd.enable = true;
    spiceUSBRedirection.enable = true;
  };
}
