#!/bin/sh
# Copyright (C) 2016 Henryk Heisig hyniu@o2.pl

. /lib/functions/leds.sh
. /lib/pistachio.sh

status_led="marduk:red:heartbeat"

set_state() {

	case "$1" in
	preinit)
		status_led_blink_preinit
		;;
	failsafe)
		status_led_blink_failsafe
		;;
	preinit_regular)
		status_led_blink_preinit_regular
		;;
	upgrade)
		status_led="marduk:red:user1"
		status_led_blink_slow
		;;
	done)
		status_led_set_heartbeat
		;;
	esac
}
