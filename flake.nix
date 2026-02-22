{
  description = "sglre6355's NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
  };

  outputs =
    { self, nixpkgs, ... }:
    let
      username = "sglre6355";
    in
    {
      nixosConfigurations = {
        SGR-PCPA02 = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./hosts/sgr-pcpa02
          ];
          specialArgs = {
            host = "SGR-PCPA02";
            inherit self username;
          };
        };
      };
    };
}
