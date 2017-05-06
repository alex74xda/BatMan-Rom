#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/11120000.ufs/by-name/RECOVERY:37709824:25a5506eaab4989b61de76208f7befde2f68f09a; then
  applypatch EMMC:/dev/block/platform/11120000.ufs/by-name/BOOT:33150976:ffa3ffd180eb0d4949baa2e95a8fd4bdea140136 EMMC:/dev/block/platform/11120000.ufs/by-name/RECOVERY 25a5506eaab4989b61de76208f7befde2f68f09a 37709824 ffa3ffd180eb0d4949baa2e95a8fd4bdea140136:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
