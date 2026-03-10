{
  ...
}:
{
  imports = [
    ../../modules/nixos
    ./hardware-configuration.nix
  ];

  boot.loader.limine.extraEntries = ''
    /Windows 11
      protocol: efi
      path: guid(85189e56-a637-49ca-9cb4-d6f943af9408):/EFI/Microsoft/Boot/bootmgfw.efi
  '';

  time.timeZone = "Europe/London";

  programs.steam.enable = true;

  services.clamav = {
    daemon.enable = true;
    updater.enable = true;
  };

  system.stateVersion = "25.11";
}
