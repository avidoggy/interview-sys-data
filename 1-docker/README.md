# 1-docker

## 1.1

Please explain this command.
```
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
```

> PS `awk` 是使用單引號 `'`. `awk '{print $3}'`

__Answer__ : 找出沒有名字的 images，然後刪除

1. 執行 docker images 秀出所有 images
2. `grep` 以 none 為開頭的行
3. 用 `awk '{print $3}'` 取出第三個欄位的值: container id
4. 最後 docker rmi 執行刪除 image

## 1.2

Please explain this command.
```
docker run \
	-d \
	-e TEST_ENV=HELLO_WORLD \
	-v /etc/localtime:/etc/localtime:ro \
	-p 8080:80 \
	-p 5566:443 \
	--link mysql:db \
	--dns=10.0.0.1 \
	--dns=192.168.0.1 \
	--dns-search=local.test.com \
	--dns-search=test.com \
	--name test_docker \
	registry.local.test.com/infra/test_docker:0-17.08.03-caf85b05-rc
```

__Answer__ : 建立一個背景執行的 web server 並與另一個 container: mysql 連接

1. `-d` 背景執行
2. `-e` 環境變數
3. `-v` 將本地的 /etc/localtime 掛載到 容器的 /etc/localtime 並設定成 `唯讀`
4. `-p` 本地的 8080, 5566port 分別對應到 80, 443
5. `--link` 與另一個容器 mysql 建立通道並給別名 db
6. `--dns` 設定 dns server
7. `--dns-search` 設定搜尋 host 的時候要額外搜尋的網域
8. `--name` 給容器一個名字
9. 從 `registry.local.test.com/` 取得 __Tag__ 為 0-17.08.03-caf85b05-rc 的 infra/test_docker __image__

