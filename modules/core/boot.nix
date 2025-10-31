{ pkgs, ... }:
{
  boot = {
    plymouth = {
      enable = true;

    };
    # Filesystems support
    supportedFilesystems = [
      "ntfs"
      "exfat"
      "ext4"
      "fat32"
      "btrfs"
    ];
    tmp.cleanOnBoot = true;
    kernelPackages = pkgs.linuxPackages_latest; # _latest, _zen, _xanmod_latest, _hardened, _rt, _OTHER_CHANNEL, etc.
    kernelParams = [
      "preempt=full" # lower latency but less throughput
    ];
    loader = {
      efi.canTouchEfiVariables = true;
      efi.efiSysMountPoint = "/boot";
      timeout = 2; # "null" to display bootloader indefinitely until user selects OS
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
        useOSProber = true;
        gfxmodeEfi = "1920x1080"; # for 4k: 3840x2160
        gfxmodeBios = "1920x1080"; # for 4k: 3840x2160
        theme = pkgs.stdenv.mkDerivation {
          pname = "lain-grub-theme";
          version = "1.0.1";
          src = pkgs.fetchFromGitHub {
            owner = "uiriansan";
            repo = "LainGrubTheme";
            rev = "1cf38e3"; # latest commit hash, use release tag if preferred
            hash = "sha256-gDwNolJ28UQUjE2G2U0bvzh29E9EEiet9SlItbY46IQ=";
          };
          installPhase = ''
            cp -r lain $out
          '';
        };
      };
    };
    # Appimage Support
    binfmt.registrations.appimage = {
      wrapInterpreterInShell = false;
      interpreter = "${pkgs.appimage-run}/bin/appimage-run";
      recognitionType = "magic";
      offset = 0;
      mask = ''\xff\xff\xff\xff\x00\x00\x00\x00\xff\xff\xff'';
      magicOrExtension = ''\x7fELF....AI\x02'';
    };
  };
}
