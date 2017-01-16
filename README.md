# TWRP device tree for Redmi Note 3 (_kenzo_)

To build:

```
. build/envsetup.sh
lunch omni_kenzo-userdebug
make installclean
make recoveryimage -j(# of cores)
```

Kernel source: https://github.com/LineageOS/android_kernel_wingtech_msm8916
