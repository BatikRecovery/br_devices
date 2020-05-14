# android_device_realme_x2
`**Info**: this tree is unified i.e it builds for every variant of Realme X2 be it RMX1991, RMX1992, or RMX1992`

##### Table of Contents
- [Building](#building-BatikRP-for-Realme-X2)
  - [Clone](#clone)
  - [Compile](#compile)
- [Device Info](#device-info)
- [Device Specifications](#device-specifications)
- [Device Picture](#device-picture)

## Building BatikRP for Realme X2:
#### Clone
`git clone https://github.com/BatikRecovery/br_devices.git -b realme_x2 device/realme/x2`
#### Compile
`. build/envsetup`
`lunch omni_x2-eng`
`make -j8 recoveryimage`

Or in a single line:
`. build/envsetup.sh && lunch omni_whyred-eng && make -j8 recoveryimage`

## Device Info
The realme X2 (codenamed "RMX{ _1991, 1991CN, 1992, 1993_ }") is a mid-range smartphone from realme.

It was announced and released on 20th September, 2019 in China and Europe and on 17th November, 2019 in India.

## Device Specifications

Basic   | Spec Sheet
-------:|:-------------------------
SoC     | Qualcomm SDM730 Snapdragon 730G
CPU     | Octa-core (2x2.2 GHz Kryo 470 Gold & 6x1.8 GHz Kryo 470 Silver)
GPU     | Adreno 618
Memory  | 4/6/8 GB RAM
Shipped Android Version | 9.0 with ColorOS 6.1
Storage | 64/128/256GB UFS 2.1
Battery | Non-removable Li-Po 4000 mAh battery
Display | 1080 x 2340 pixels, 20:9 ratio, 6.4 inches, Super AMOLED
Rear Camera  | 64MP (wide) / 8MP (telephoto) / 2MP (ultrawide) / 2MP (depth)
Front Camera | 32MP

## Device Picture
![realme X2](https://csmobiles.com/28289-large_default/realme-x2-6-4-8gb-128gb-dual-sim-pearl-white.jpg "realme X2 in lunar white")

