{ pkgs, inputs, ... }:
{
  home-manager.sharedModules = [
    (_: {
      imports = [
        inputs.nixcord.homeModules.nixcord

        ./plugins.nix
      ];
      programs.nixcord = {
        enable = true;
        config = {
          frameless = true;
          disableMinSize = true;
          transparent = true;
          enableReactDevtools = true;
          notifyAboutUpdates = true;
          autoUpdate = false;
          autoUpdateNotification = false;
          useQuickCss = true;
        };
      };
    })
  ];
}