# CloudflareSpeedTestDDNS
使用CloudflareSpeedTest工具优选IP后自动DDNS到Cloudflare

### 简易教程
#### 1.下载并解压脚本（载体可以是openwrt，或其他linux）
#### 2.填写`config.conf`配置文件
#### 3.运行脚本
```bash
bash start.sh
```

# 目前只支持运行一次


# 修改前置进程，参考https://www.swvq.com/article/detail/9961


# 添加时区，可定义计划任务:CRON

# 不能对同一域名添加不同记录

## ~~[教程过旧，待更新](https://blog.vbar.fun/archives/openwrt-ding-shi-you-xuan-cloudflareip-bing-geng-xin-dao-cloudflare)~~
~~详细使用教程请参考[详细教程](https://blog.vbar.fun/archives/openwrt-ding-shi-you-xuan-cloudflareip-bing-geng-xin-dao-cloudflare)~~

## Docker运行
https://hub.docker.com/r/lee1080/cfstddns

## 感谢
感谢[XIU2](https://github.com/XIU2)给大家提供了[CloudflareSpeedTest](https://github.com/XIU2/CloudflareSpeedTest)这么方便的优选IP的工具。
https://github.com/XIU2/CloudflareSpeedTest
