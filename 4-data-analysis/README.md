# 4-data-analysis

1. 4-1 請用 `run-jupyter` 觀看程式碼
2. 4-2 請用 `run-zeppelin` 觀看程式碼

## 4-1 

1. Data Clean

    1. __Windows__ 要另外處理版本問題
    2. __Browser__ 針對不同裝置有不同命名 (ex. `Safari` and `Mobile Safari`)。需要處理，因為可以用 `is_mobile` 做區分
    3. __OS Version__ 需要討論要切多細。 (ex `major`.`minor`.`build` 需要留下哪些資訊)
    4. __怪異數值__ : `同時存在多種裝置` 或 `什麼都不是` 。 推測是 bot 或工程人員ㄒ在測試之類的

        ```sql
        browser='CFNetwork' and is_mobile=1 and is_pc=1 and is_tablet=0 and is_bot=0
        browser='Chrome' and is_mobile=0 and is_pc=0 and is_tablet=0 and is_bot=0
        browser='Googlebot' and is_mobile=1 and is_pc=0 and is_tablet=0 and is_bot=1
        browser='Puffin' and is_mobile=1 and is_pc=1 and is_tablet=0 and is_bot=0
        browser='Safari' and is_mobile=1 and is_pc=0 and is_tablet=1 and is_bot=0
        ``` 

2. Data Inside

    1. 在 PC 上 Chrome 獨佔 Windows 平台
    2. 在 Mobile 上 Safari 和 Chrome 壁壘分明
    3. Browser: `Facebook` 蠻有趣的

## 4-2

1. Data Clean

`microseconds` to `datetime`

因為我用了 `scala` ，所以相對簡單一點； `python` 的話，我猜應該也有現成 library 可以使用，否則就要使用 __除法__ 來處理了

2. Data Inside

    1. 資料有點少，所以人數和時間都相對少和短
    2. 可以把資料變大(時間拉長)，去觀察使用者是否有 `使用習慣` (ex. 平均看幾次，每頁平均看多久) 再看要不要做 __標記__ 然後用 `unsupervised clustering` 試看看。
