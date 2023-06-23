# DiamondAOSP redbull kernel

```shell
repo init -u git@github.com:DiamondAOSP/kernel_manifest-redbull.git -b 13 --submodules

./patcher apply

BUILD_CONFIG=private/msm-google/build.config.redbull.vintf build/build.sh

ANDROID_BUILD_TOP=../../diamondaosp
cp out/android-msm-pixel-4.19/dist/{*.ko,dtbo.img,Image.lz4*,kernel-uapi-headers.tar.gz,lito.dtb,modules.load} $ANDROID_BUILD_TOP/device/google/redbull-kernel
mv $ANDROID_BUILD_TOP/device/google/redbull-kernel/{,kernelsu/}kernelsu.ko
```

Based on [GrapheneOS `2023071100`](https://github.com/GrapheneOS/kernel_manifest-redbull/tree/2023071100)
