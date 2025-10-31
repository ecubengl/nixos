{
    pkgs,
    ...
}:
{
  imports = [
    # some imported apps as waybar, rofi, hyprlock etc.
  ];
  programs.niri = {
    enable = true;
  };
}