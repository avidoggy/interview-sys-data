Interview for Bridgewell Sys&Data Team
=====================================

* Except explicitly specified in the question, you could implement by your own way.
* Answering question is requirement; you are free to show what you can do. Astonish us!

# 0 - Git

- Please fork this repository for answering following questions.
- For every question, you should create a branch respectively, for example `1-docker`, `2-linux`, and answer on corresponding branch.
- Merge them into `master` branch. we only examine answers on `master` branch.
- Email us your repository link.

# 1 - Docker

## 1.1
Please explain this command.
```
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
```

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

# 2 - Linux
Please explain the functionality of the following two files in Linux operation system.
```
/etc/hosts
/etc/resolv.conf
```

# 3 - Bash Script
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

# 4 - Data Analysis

Please describe your findings according to the following datasets respectively.

*Hints:*
* try to do some discovering, cleaning or analysis

## 4.1

* dataset: [dataset1.tar.gz](dataset1.tar.gz)
* description: list of user agent

*Hints:*
* there are some useful utility packages you may need, ex. [user-agents](https://pypi.python.org/pypi/user-agents)

```
Mozilla/5.0 (Windows NT 10.0; WOW64;  ....
Mozilla/5.0 (Linux; Android 7.0; SAMS ....
Mozilla/5.0 (Windows NT 6.3; Win64; x ....
Mozilla/5.0 (Windows NT 6.1) AppleWeb ....
Mozilla/5.0 (iPhone; CPU iPhone OS 10 ....
```

## 4.2

* dataset: [dataset2.gz.parquet](dataset2.gz.parquet)
* description: timestamp (in micro second) and hashed user id extracted from user visit event logs

```
+-------------------+----------------+
|timestamp_micro_sec|         user_id|
+-------------------+----------------+
|   1501545994088866|c77d0bcc55b624b7|
|   1501545992833956|c7dd2406697ceb0b|
|   1501545996724693|cd6ba573a1ea9ea4|
|   1501545996246811|c2abe46567acd437|
|   1501545994870040|c3c79186379f219f|
+-------------------+----------------+
only showing top 5 rows
```

# 5 - Questionnaire

1. How long did you spend answering?
2. Which question is the most easy for you? Why?
3. Which question is the most difficult for you? Why?
4. Regarding your working style, when coding, do you prefer to work alone or in teams? Same question but when you are doing design and/or research. 
5. From what you have surveyed, what aspect of Bridgewell matches you the most? What aspect match you the least?
6. What kind of contribution you expect to make to Bridgewell?
7. What do you expect to take away from Bridgewell?
