{
  boot.consoleLogLevel = 0;
  boot.kernelParams = [ "quiet" "loglevel=0" "snd_bcm2835.enable_hdmi=1" "snd_bcm2835.enable_headphones=1" ];
  boot.kernel.sysctl."vm.mmap_rnd_bits" = 18;

  boot.extraModprobeConfig = ''
    options cfg80211 ieee80211_regdom=IT
    options brcmfmac roamoff=1 feature_disable=0x82000
  '';

  users.users.server.extraGroups = [ "wheel" "networkmanager" "docker" "audio" "cdrom" ];
}
