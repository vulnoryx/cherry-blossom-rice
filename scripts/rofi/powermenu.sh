#! /bin/sh

# chosen=$(printf "  Power Off\n  Restart\n  Suspend\n  Hibernate\n  Log Out\n  Lock" | rofi -dmenu -i -theme-str '@import "power.rasi"')
chosen=$(printf "  Power Off\n  Restart\n  Suspend\n  Log Out\n  Lock" | rofi -dmenu -i -theme-str '@import "power.rasi"')
case "$chosen" in
	"  Power Off") shutdown now ;;
	"  Restart") reboot ;;
	"  Suspend") i3exit suspend ;;
	# "  Hibernate") systemctl hibernate ;;
	"  Log Out") i3exit logout ;;
	"  Lock") i3exit lock -l ;;
	*) exit 1 ;;
esac