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

## Xiaomi R4AG_V2 Breed Flash 直刷版 ( R4AG V2 HW changed!)
## Many Thx to Wbs2036's support for Xiaomi R4AG V2 ! wbs306/lede@a2a3a4a commits: 
## 1.target/linux/ramips/dts/mt7621_xiaomi_mi-router-4a-gigabit-v2.dts
## 2.target/linux/ramips/image/mt7621.mk
## 3.target/linux/ramips/mt7621/base-files/etc/board.d/02_network


### 修改主题文件
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

# 添加插件源码
# sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
# sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
echo 'src-git small8 https://github.com/kenzok8/small-package' >>feeds.conf.default

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

