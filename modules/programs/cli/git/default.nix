{ pkgs, ... }:
{
  home-manager.sharedModules = [
    (_: {
      programs.git = {
        enable = true;
        userName = "ecube"; # Set your Git user name
        userEmail = "ecube-true@gmail.com"; # Set your Git user email
      };
    })
  ];
}
