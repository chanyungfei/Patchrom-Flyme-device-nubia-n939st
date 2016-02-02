#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:16577836:187bcb6064ad6e153b452e45be560032c70e1205; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:16430376:b819e50eacff595af59a86cb01233b9c794d5aa8 EMMC:/dev/block/bootdevice/by-name/recovery 187bcb6064ad6e153b452e45be560032c70e1205 16577836 b819e50eacff595af59a86cb01233b9c794d5aa8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
