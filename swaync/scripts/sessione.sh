#!/bin/bash

get_spegnimento() {
      read sessione < ~/.session-var
      if [ "$sessione" == "gamescope-session" ]; then 
          sed -i 's/gamescope-session/Hyprland/g' ~/.session-var
          systemctl poweroff
      elif [ "$sessione" == "Hyprland" ]; then
          systemctl poweroff
      fi
}

get_riavvio() {
      read sessione < ~/.session-var
      if [ "$sessione" == "gamescope-session" ]; then 
          sed -i 's/gamescope-session/Hyprland/g' ~/.session-var
          systemctl reboot
      elif [ "$sessione" == "Hyprland" ]; then 
          systemctl reboot
         fi
}

if [ "$1" == "--spegni" ]; then 
    get_spegnimento
elif [ "$1" == "--riavvio" ]; then 
    get_riavvio
fi

