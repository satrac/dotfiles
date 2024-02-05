#!/bin/sh

brave-browser-stable \
--enable-accelerated-mjpeg-decode \
--enable-accelerated-video \
--enable-accelerated-video-decode \
--ignore-gpu-blacklist \
--enable-native-gpu-memory-buffers \
--enable-gpu-rasterization \
--enable-features=VaapiVideoEncoder,VaapiVideoDecoder \
--enable-zero-copy "$@"
# --enable-features=VaapiVideoEncoder,VaapiVideoDecoder,CanvasOopRasterization \
# --disable-features=UseChromeOSDirectVideoDecoder
# --disable-gpu-sandbox
#--use-gl=desktop \
