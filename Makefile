.PHONY: download test

download:
	# 下载 nginx-module-vts
	if [ ! -f nginx-module-vts-0.2.3.zip ]; then \
		wget -O nginx-module-vts-0.2.3.zip https://github.com/vozlt/nginx-module-vts/archive/refs/tags/v0.2.3.zip; \
	fi
	# 下载 ngx_waf
	if [ ! -f ngx_waf-v10.1.2.zip ]; then \
		wget -O ngx_waf-v10.1.2.zip https://github.com/ADD-SP/ngx_waf/archive/refs/tags/v10.1.2.zip; \
	fi
	# 解压模块并删除压缩包
	rm -rf nginx-module-vts-0.2.3 && unzip -o nginx-module-vts-0.2.3.zip
	rm -rf ngx_waf-v10.1.2 && unzip -o ngx_waf-v10.1.2.zip

test:
	docker build -t nginx .  # 构建 Docker 镜像
