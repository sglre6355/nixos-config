{
  ...
}:
{
  imports = [
    ../../modules/nixos
    ./hardware-configuration.nix
  ];

  time.timeZone = "Europe/London";

  system.stateVersion = "25.11";
}
