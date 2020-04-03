#!/bin/bash
cd ../../../..
cd system/core
patch -p1 < ../../device/realme/RMX1831/patches/system_core/system_core.patch
cd ../..
cd frameworks/base
patch -p1 < ../../device/realme/RMX1831/patches/frameworks_base/frameworks_base.patch
patch -p1 < ../../device/realme/RMX1831/patches/frameworks_base/frameworks_base-2.patch
cd ../..
cd frameworks/opt/net/wifi
patch -p1 < ../../../device/realme/RMX1831/patches/frameworks_opt_net_wifi/frameworks_opt_net_wifi.patch
cd ../../..
cd external/skia
patch -p1 < ../../device/realme/RMX1831/patches/external_skia/external_skia.patch
git clean -fd
cd ../../..
