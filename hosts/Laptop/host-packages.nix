{ pkgs, inputs, ... }:
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
    inputs.thorium.packages.x86_64-linux.thorium-avx
  ];
}
