#!/bin/sh
### BEGIN INIT INFO
# Provides:          pi-init
# Required-Start:    $all
# Required-Stop:     $all
# Default-Start:     2
# Default-Stop:
# Short-Description: Scripts for initing a Raspberry Pi
### END INIT INFO

run_scripts() {
    for SCRIPT in /etc/pi-init/*.sh
        do
            if [ -f $SCRIPT -a -x $SCRIPT ]
            then
                $SCRIPT
            fi
        done
}

case "$1" in
    start|"")
        if [ ! -f /etc/init-scripts-run ]; then
            run_scripts
            touch /etc/init-scripts-run
        fi
        shutdown now
        exit 0
        ;;
    stop|reload|force-reload|restart|status)
        # noop
        exit 0
        ;;
    *)
        exit 3
        ;;
esac
:
