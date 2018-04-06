# 3-bash

Please write a `bash script` to read [access.log](access.log);
find out the logs with `return code 404`;
count the occurrence of each IP among these logs and output them in ascending order.

Expected output:
```
1 118.163.135.13
1 123.51.165.114
1 210.242.60.1
1 210.243.21.253
1 220.134.215.89
1 59.125.23.30
1 60.250.66.98
1 74.222.14.82
3 64.71.171.80
4 64.71.171.86
```

## Answer

bash 尚未精通到能做這件事情，python 可以

### Psudo code

```python
#! /usr/bin/python

import os

def main():
    ip_count = dict()
    path = 'path'
    print(path)
    with open(path, 'r') as access_log:
        for line in access_log:
            ip = line.split(' ')[0]
            if ip in ip_count.keys():
                ip_count[ip] += 1
            else:
                ip_count[ip] = 1
    for ip, count in sorted(ip_count.items(), key=lambda x:x[1]):
        print('{} {}'.format(count, ip))


if __name__ == '__main__':
    main()
```
