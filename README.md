本仓库把[vts-0.2.3](https://github.com/vozlt/nginx-module-vts)和`nginx-lua-prometheus`和[ngx_waf](https://github.com/ADD-SP/ngx_waf)打进`openresty`镜像中

## 使用方法：

### 全局配置
```conf
vhost_traffic_status_zone;
```

### 开启服务
```conf
server {
    listen 9145;
    # 给日志模板使用的变量
    set $resp_body "";
    set $resp_cookies "";
    location /metrics {
        content_by_lua_block {
            metric_connections:set(ngx.var.connections_reading, {"reading"})
            metric_connections:set(ngx.var.connections_waiting, {"waiting"})
            metric_connections:set(ngx.var.connections_writing, {"writing"})
            prometheus:collect()
        }
    }

    location /status {
        vhost_traffic_status_display;
        vhost_traffic_status_display_format html;
    }

}
```