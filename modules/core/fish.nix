{ pkgs, ... }:
{
  programs.fish = {
    enable = true;
    shellInit = "clear";      # shellInit = "ls\necho('HAAAAI')";

     shellAliases = {
      ff = "clear;fastfetch";
      cat = "bat";
      cls = "clear";
      tml = "tmux list-sessions";
      tma = "tmux attach";
      vc = "code --disable-gpu"; # gui code editor
      nv = "nvim";
      cp = "cp -iv";
      mv = "mv -iv";
      rm = "rm -vI";
      bc = "bc -ql";
      mkd = "mkdir -pv";
      grep = "grep --color=always";

      # dev = "cd /mnt/work/dev/";
      # nixdir = "cd /mnt/work/dev/nix/";
      # cppdir = "cd /mnt/work/dev/C++/";
      # zigdir = "cd /mnt/work/dev/Zig/";
      # csdir = "cd /mnt/work/dev/C#/";
      # rustdir = "cd /mnt/work/dev/Rust/";
      # pydir = "cd /mnt/work/dev/Python/";
      # javadir = "cd /mnt/work/dev/Java/";
      # luadir = "cd /mnt/work/dev/lua/";
      # webdir = "cd /mnt/work/dev/Website/";
    };
  };
}
