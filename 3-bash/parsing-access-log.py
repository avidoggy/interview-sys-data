#! /usr/bin/python

import os

def main():
    ip_count = dict()
    path = '{}/../access.log'.format(os.path.dirname(__file__))
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
