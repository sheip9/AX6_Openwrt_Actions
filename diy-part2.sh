#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/LEDE/RedmiAX6/g' package/base-files/files/bin/config_generate
sed -i 's/LEDE/RedmiAX6/g' package/base-files/luci2/bin/config_generate
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
sed -i 's/#5e72e4/#E7651A/g' package/feeds/kenzo/luci-app-argon-config/root/etc/config/argon
rm ./feeds/small8/luci-app-pppoe-relay/root/etc/init.d/pppoe-relay -f
