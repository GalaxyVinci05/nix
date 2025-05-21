{
  # Enable pipewire for sound

  services.pipewire = {
    enable = true;
    alsa = {
      enable = true;
      support32Bit = true;
    };
    pulse.enable = true;
    # jack.enable = true;
    wireplumber.enable = true;
  };
}
