#!/bin/bash

if [ ! -f nginx-module-vts-0.2.2.zip ]; then
    wget https://github.com/ttdockerfile/openresty-monitor-ubuntu/releases/download/vts-0.2.2/nginx-module-vts-0.2.2.zip
fi

if [ ! -f ngx_waf-v10.1.2.zip ]; then
    wget https://github.com/ADD-SP/ngx_waf/archive/refs/tags/v10.1.2.zip
    mv v10.1.2.zip ngx_waf-v10.1.2.zip
fi


rm -rf nginx-module-vts-0.2.2 && unzip nginx-module-vts-0.2.2.zip

rm -rf ngx_waf-10.1.2 && unzip ngx_waf-v10.1.2.zip