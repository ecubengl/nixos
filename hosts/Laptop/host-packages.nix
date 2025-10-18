{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    obsidian
    protonvpn-gui # VPN
    github-desktop
    btop
    neovim
    vim
    fastfetch
    bat
    zoxide
    ayugram-desktop
    localsend
    # pokego # Overlayed
  ];
}
