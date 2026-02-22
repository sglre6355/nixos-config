{
  pkgs,
  username,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    podman-compose
  ];

  virtualisation = {
    containers.enable = true;
    podman = {
      enable = true;
      defaultNetwork.settings.dns_enabled = true;
    };
  };

  users.users.${username}.extraGroups = [
    "podman"
  ];
}
