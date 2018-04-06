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

