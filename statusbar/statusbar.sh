#!/bin/bash

# This is the wrapper script for all status bar functions, all contents are
# imported by the main function

main() {

. ~/.config/statusbar/_wifi.sh ;
. ~/.config/statusbar/_battery.sh ;
. ~/.config/statusbar/_displaytime.sh ;

}

while true;
    do xsetroot -name "$(main | tr "\n" " ")"
        sleep 1;
done;
