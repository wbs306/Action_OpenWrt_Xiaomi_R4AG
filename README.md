## Actions-OpenWrt-Xiaomi-R4AGv2
### Xiaomi R4AG_V2 Breed Flash 直刷版 ( Xiaomi R4A Gigabit, R4AGv2, R4AG V2, Hardware changed!)
![image](https://user-images.githubusercontent.com/117250841/200182184-1374ebfe-cca5-40fb-a7ca-4eaa1444f2f0.png)
Powered by LuCI Master (git-22.289.58375-2a380a3) / ArgonTheme v1.7.3 / MrTaiKe build 2022.11.06 @ OpenWrt R22.9.1

### Packages added:
 -https://github.com/kenzok8/small-package
 
 -https://github.com/jerrykuku/luci-theme-argon.git



## How to BREED flash Openwrt firmware?
```
Step#1 Telnet to Router

Successfully used @LordPinhead's code (commit #99634522) to telnet XiaoMi R4A V2 Gigabit (RA4Gv2) 
https://github.com/acecilia/OpenWRTInvasion/pull/155/commits/996345221db8800a569093fd7ad5a642b160bcbc

pip3 install -r requirements.txt # Install requirements
python3 remote_command_execution_vulnerability_v2.py # Run the script
```

```
Step#2 Boot BREED 
Refer this instrution https://www.right.com.cn/forum/thread-4007071-1-1.html
Go to https://breed.hackpascal.net, For RA4Gv2, download breed-mt7621-pbr-m1.bin 
```
![image](https://user-images.githubusercontent.com/117250841/200181357-1ba254f4-51ad-4442-974e-de9b38519f25.jpeg)


```
Step#3 Use BREED web to flash 
Use this two bin file 
1.eeprom.bin
2.openwrt-ramips-mt7621-xiaomi_mi-router-4a-gigabit-v2-squashfs-sysupgrade.bin
```
![image](https://user-images.githubusercontent.com/117250841/200181428-b9628072-b1d6-4f23-a799-3b06c63c12bb.png)

## Many Thanks to [wbs306](https://github.com/wbs306)
Many Thanks to wbs306's support for Xiaomi R4AG V2  hardware changes!   [wbs306/lede@a2a3a4a](https://github.com/wbs306/lede) commits: 
  1. target/linux/ramips/dts/mt7621_xiaomi_mi-router-4a-gigabit-v2.dts
  2. target/linux/ramips/image/mt7621.mk
  3. target/linux/ramips/mt7621/base-files/etc/board.d/02_network
```  
# How to compile OpenWrt Firmware (BREED): 
Please refer back to https://github.com/wbs306/Action_OpenWrt_Xiaomi_R4AG 
Xiaomi R4A Gigabit Breed Flash (NOT for R4AGv2)
```
