{ ... }:
{
  home-manager.sharedModules = [
    (_: {
      services.hypridle = {
        enable = true;
        settings = {
          general = {
            ignore_dbus_inhibit = false;
            # added ot switch keyboard layout on lid control
            lock_cmd = "hyprctl switchxkblayout all 0 | pidof hyprlock || hyprlock";
            unlock_cmd = "pkill --signal SIGUSR1 hyprlock";
            # added to switch keyboard layout on sleep control
            before_sleep_cmd = "hyprctl switchxkblayout all 0 | loginctl lock-session";
            after_sleep_cmd = "hyprctl dispatch dpms on";
          };
          listener = [
            {
              timeout = 300; # 5 Minutes
              # added to switch keyboard layout on lock screen
              on-timeout = "hyprctl switchxkblayout all 0 | loginctl lock-session";
            }
            /*
              {
                timeout = 360; # 6 Minutes
                on-timeout = "hyprctl dispatch dpms off";
                on-resume = "hyprctl dispatch dpms on";
              }
            */
            /*
              {
                timeout = 600; # 10m
                on-timeout = "systemctl suspend";
              }
            */
          ];
        };
      };
    })
  ];
}
