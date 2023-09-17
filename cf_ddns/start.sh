#!/bin/bash
source config.conf;

source ./cf_check.sh

case $DNS_PROVIDER in
    1)
        source ./cf_ddns_cloudflare.sh
        ;;
    2)
        source ./cf_ddns_dnspod.sh
        ;;
    *)
        echo "未选择任何DNS服务商"
        ;;
esac

source ./cf_push.sh

exit 0;
