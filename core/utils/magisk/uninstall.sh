# Copyright 2020 - 2022 The Litegapps Project
# magisk uninstaller (running by magisk in android boot)

if [ -f /data/adb/service.d/litegapps-post-fs ]; then
	rm -rf /data/adb/service.d/litegapps-post-fs
fi
if [ -d /data/adb/litegapps ]; then
	rm -rf /data/adb/litegapps
fi

sleep 30s
pm uninstall com.google.android.gms
pm uninstall com.android.vending
