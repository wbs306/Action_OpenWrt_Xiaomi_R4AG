#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
#echo 'src-git liuran001_packages https://github.com/liuran001/openwrt-packages' >>feeds.conf.default

# 添加插件源码 Add a feed source
echo 'src-git small8 https://github.com/kenzok8/small-package' >>feeds.conf.default

# Add Theme package
rm -rf package/lean/luci-theme-argon
rm -rf package/lean/luci-app-argon-config
sudo git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
sudo git clone https://github.com/jerrykuku/luci-app-argon-config.git package/lean/luci-app-argon-config

#rm -rf package/lean/luci-theme-argon_armygreen
#sudo git clone https://github.com/XXKDB/luci-theme-argon_armygreen.git package/lean/luci-theme-argon_armygreen