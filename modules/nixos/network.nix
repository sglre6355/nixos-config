{
  host,
  ...
}:
{
  networking = {
    hostName = host;
    networkmanager.enable = true;
    nameservers = [
      "1.1.1.1"
      "8.8.8.8"
    ];
    firewall = {
      enable = true;
      allowedTCPPorts = [ 22 ];
    };
  };

  services.tailscale.enable = true;
  networking.firewall.checkReversePath = "loose";
}
