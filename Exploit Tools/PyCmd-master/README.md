# PyCmd 隐形一句话木马

### 详细参考:  [http://thief.one](http://thief.one/2016/09/18/PyCmd-%E5%8A%A0%E5%AF%86%E9%9A%90%E5%BD%A2%E6%9C%A8%E9%A9%AC/)



此时，运行PyCmd.py程序：

```
python PyCmd.py -u http://10.0.3.13/test/p.php -p test [--proxy]
```

或者

```
python PyCmd.py -u http://192.168.10.149:8080/Test/1.jsp -p test [--proxy]
```



程序会自动判断输入的网站类型
输入参数：

- -h 查看帮助信息
- -u 网站木马地址
- -p 木马shell密码
- –proxy 开启本地代理（方便调试）

注：当开启本地调试，需运行Fiddler程序，或者其他抓包软件。