# For Openwrt (Not for LEDE)
# Description: OpenWrt DIY script part 2 Configuration (After Update feeds)

# # Add Theme package
# rm -rf package/luci-theme-argon
# rm -rf package/luci-app-argon-config
# sudo git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
# sudo git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config


# Basic Modification 

# 修改openwrt登陆地址,把下面的192.168.31.1修改成你想要的就可以了
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate

# 修改默认 wifi 名称 ssid为 WiFi_R4AGv2
sed -i 's/ssid=OpenWrt/ssid=WiFi_R4AGv2/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 修改默认wifi密码key为password
sed -i 's/encryption=none/encryption=psk2/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i '/set wireless.default_radio${devidx}.encryption=psk2/a\set wireless.default_radio${devidx}.key=password' package/kernel/mac80211/files/lib/wifi/mac80211.sh


