##### 注意

```bash
1. 需要安装wvs
2. 导出的报告文件在 C:\report
```



##### 使用方法

```bash

1. 批量扫描
 	python3 run.py -c "Batscan" -d "domain.xls"

2. 指定的扫描配置
	python3 run.py -c "DesScan" -u "http://www.baidu.com"

3. 扫描敏感路径
	python3 run.py -c "ScanDir"
	# 导出的文件在 output/report/save.txt 中

```



###### Author : PpBibo

###### Time : 2019.02.17 00:52

