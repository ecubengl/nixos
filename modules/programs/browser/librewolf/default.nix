{
  inputs,
  lib,
  pkgs,
  ...
}:
{
  home-manager.sharedModules = [
    (_: {
      programs.librewolf = {
        enable = true;
        policies = import ./policies.nix { inherit lib; };
        languagePacks = [
          "en-US"
        ];
      };
    })
  ];
}
