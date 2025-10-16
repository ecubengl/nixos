{ pkgs, ... }:
{
  programs.fish = {
    enable = true;
    shellInit = "clear\nfastfetch";      # shellInit = "ls\necho('HAAAAI')";
  };
}
