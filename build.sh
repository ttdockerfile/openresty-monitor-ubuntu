#!/bin/bash

if [ ! -f nginx-module-vts-0.2.2.zip ]; then
    wget https://github.com/ttdockerfile/openresty-monitor-ubuntu/releases/download/vts-0.2.2/nginx-module-vts-0.2.2.zip
fi

rm -rf nginx-module-vts-0.2.2 && unzip nginx-module-vts-0.2.2.zip