
## Xiaomi R4AGv2 Hardware changed! Breed Flash 直刷版 (R4A Gigabit,R4AG_V2, R4AG V2)



![image](https://user-images.githubusercontent.com/117250841/200182184-1374ebfe-cca5-40fb-a7ca-4eaa1444f2f0.png)



### - Note: Welcome to try out it. [Release Bin file ](https://github.com/MrTaiKe/Action_OpenWrt_Xiaomi_R4AGv2/actions/runs/3402746272)
- build: wetransfer.com#L1 Download Link: https://we.tl/t-wUdXMxjDBz

### - You Agree to Proceed and Use at your own risk.
    openwrt-ramips-mt7621-xiaomi_mi-router-4a-gigabit-v2-squashfs-sysupgrade.bin

### - Note: LED lights seems not working properly.
### - Packages added:
  - https://github.com/kenzok8/small-package
  - https://github.com/jerrykuku/luci-theme-argon.git
     


## How to built/Compile Openwrt firmware(bin)?

- https://github.com/wbs306/lede 
- https://github.com/wbs306/Action_OpenWrt_Xiaomi_R4AG, Xiaomi R4A Gigabit Breed Flash (NOT for R4AGv2)

### Thanks to [wbs306](https://github.com/wbs306)
- Many Thanks to wbs306's codes for Xiaomi R4AG V2 hardware changes! [wbs306/lede@a2a3a4a](https://github.com/wbs306/lede) 

    1. target/linux/ramips/dts/mt7621_xiaomi_mi-router-4a-gigabit-v2.dts
    2. target/linux/ramips/image/mt7621.mk
    3. target/linux/ramips/mt7621/base-files/etc/board.d/02_network


## How to BREED flash Openwrt bin file?

###  Step#1 How to Telnet to Router 

    Successfully used @LordPinhead's code (commit #99634522) to telnet XiaoMi R4A V2 Gigabit (RA4Gv2) 
    
    https://github.com/acecilia/OpenWRTInvasion/pull/155/commits/996345221db8800a569093fd7ad5a642b160bcbc
    
    pip3 install -r requirements.txt # Install requirements python3 remote_command_execution_vulnerability_v2.py # Run the script

###  Step#2 How to flash BREED bootloader onto router 
```
Refer to this instrution https://www.right.com.cn/forum/thread-4007071-1-1.html
(This instruction is just a reference, make some adjustments to what you need)

Go to https://breed.hackpascal.net, For RA4Gv2, download breed-mt7621-pbr-m1.bin 
After successfully Telnet 192.168.31.1, use ftp app, copy it over to router's tmp folder.

run the following script
mtd -r write /tmp/breed-mt7621-pbr-m1.bin Bootloader
```
![image](https://user-images.githubusercontent.com/117250841/200181357-1ba254f4-51ad-4442-974e-de9b38519f25.jpeg)

###  Step#3 How to Use BREED web to flash 
```
Hold & press reset, power on
Open browser, go to 192.168.1.1 for Breed Web Page
Flash these two bin files 
1.eeprom.bin
2.openwrt-ramips-mt7621-xiaomi_mi-router-4a-gigabit-v2-squashfs-sysupgrade.bin
```
![image](https://user-images.githubusercontent.com/117250841/200181428-b9628072-b1d6-4f23-a799-3b06c63c12bb.png)

![image](https://user-images.githubusercontent.com/117250841/200880220-1ed7a02a-c35b-4cd6-ba71-a6c85778a572.jpeg)

