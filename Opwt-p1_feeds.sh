# For Openwrt (Not for LEDE)
# Description: OpenWrt DIY script part 1 (Before Update feeds)


# 添加插件源码 Add a feed source
#echo 'src-git small8 https://github.com/kenzok8/small-package' >>feeds.conf.default
#echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default

# Add Theme package
rm -rf package/luci-theme-argon
rm -rf package/luci-app-argon-config
sudo git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
sudo git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config

#取消原主题luci-theme-bootstrap为默认主题
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

# 修改 argon 为默认主题,可根据你喜欢的修改成其他的（不选择那些会自动改变为默认主题的主题才有效果）
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
