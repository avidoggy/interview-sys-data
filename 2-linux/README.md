# 2-linux

Please explain the functionality of the following two files in Linux operation system.
```
/etc/hosts
/etc/resolv.conf
```

## Answers

1. `/etc/hosts`

IP 與 Domain name 之間的對應表

2. `/etc/resolv.conf`

使用到 Domain name server 和其對應的 IP

> 舉例： 當要訪問一個 Domain 的時候，OS 會先查找 `/etc/hosts` 假如找不到的話，才會訪問 Doamin Name Server (查找順序可以在 `/etc/nsswitch.conf` 作切換)

> Hadoop, Hbase 在架設的時候還需要 DNS Server 支援正反解 (這又是另一段故事的了)

> Ref: [鳥哥](http://linux.vbird.org/linux_server/0350dns.php#DNS_resolver_file)
