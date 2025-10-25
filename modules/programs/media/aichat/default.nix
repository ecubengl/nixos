{ pkgs, inputs, ... }:
{
  home-manager.sharedModules = [
    (_: {
      programs.aichat = {
        enable = true;
        # settings = { ...  };
      };
    })
  ];
}