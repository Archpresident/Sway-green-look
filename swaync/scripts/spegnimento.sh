action=`zenity --title Spegnimento --width=100 --height=300 --list --radiolist --column= --column= Spegni Spegni Riavvia Riavvia Sospendi Sospendi Esci 'Esci dalla sessione' Annulla Annulla`


case "$action" in
  Spegni)
     aplay /home/ale/Musica/sounds/service-logout.wav
      systemctl poweroff    ;;
  Riavvia)
     aplay /home/ale/Musica/sounds/service-logout.wav
     systemctl reboot    ;;
  Sospendi)              
     systemctl suspend    ;;
  'Esci dalla sessione')
     aplay /home/ale/Musica/sounds/power-unplug.wav
     ##openbox --exit ;;  
     sleep 2 && sway exit ;;
   Annulla)
     
     ;;
  *)
     
     ;;
esac



