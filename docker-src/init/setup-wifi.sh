#!/bin/sh
wpa_passphrase "wifi network" "wifi password" >> \
	/etc/wpa_supplicant/wpa_supplicant.conf
