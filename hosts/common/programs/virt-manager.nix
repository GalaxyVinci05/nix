{ pkgs, ... }: {
  programs.virt-manager.enable = true;

  # users.groups.libvirtd.members = [ "your_username" ];

  virtualisation.spiceUSBRedirection.enable = true;

  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      package = pkgs.qemu_kvm;
      runAsRoot = true;
      swtpm.enable = true;
    };
  };
}
