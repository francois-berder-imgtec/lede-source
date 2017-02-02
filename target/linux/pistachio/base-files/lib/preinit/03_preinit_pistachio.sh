#!/bin/sh

do_pistachio() {
	. /lib/pistachio.sh

	pistachio_board_detect
}

boot_hook_add preinit_main do_pistachio
