####  自己收集或编写的一些信息安全人员常用脚本



1. 信息安全测试人员常用的脚本
2. 该项目仅用于信息安全研究
3. 触犯法律后果自负
4. 工具来源为各位前辈大佬和自己写的一些脚本
5. 也有改的前辈们的脚本


##### Tools List
```bash
|-DICtionaries             
	|- *.txt 								 # 集合了个人收集和整理的各种字典
	
|-Exploit Tools		
	|- AWVS_Scan           
	|- FUZZ
	   |- parameth          # 该工具可用于野蛮地发现get和post参数。
	   |- uplaod-fuzz-dic   # 上传fuzz字典测试
	   |- web_dic           # 基于正则的密码生成
	   |- wfuzz             # fuzz 工具
			
	|- GitHck        				 # GitHack是一个.git泄露利用脚本
	|- LinkFinder   				 # 用于在js文件中发现隐藏的端点及其新的参数
	|- PyCmd-master  				 # PyCmd 隐形一句话木马
	|- web_pwd_common_crack  # 通用web弱口令破解脚本
	|- XSStest
	   |- xsscrapy 				 # 测试它为跨站点脚本和一些SQL注入漏洞找到的每个链接
	   |- XSStrike
	   |- burtexss
	|- enumXFF							 # 枚举X-Forwarded-Headers中的IP以绕过403限制
	
|-Some-Pox_oR-ExP-master
	|- more file Exp
	
|-Two-level-Domain_Scan
	|- knock                  # 二级域名爆破
	|- subdomain3
	|- subDomainsBrute
	
|-WEB Scanning Tools
	|- cmscan                 # 网站CMS识别
	|- dirmap                 # 一个高级web目录扫描工具
	|- dirsearch							# 暴力寻找网站中的目录和文件
	|- sensitivefilescan      # 爬行并Fuzz Web目录和文件 
	|- Stealth 								# 收集web端所有敏感信息
	|- wafw00f                # 对WEB端进行waf识别
	|- weakfilescan           # 利用动态规则的多线程敏感信息泄露检测工具
	|- whatweb								# Web应用信息收集工具
	|- wig

|-Webshell 
	|- more file *.(php|jsp|asp|apsx|jpg|gif|?)
	
|-SOME Pyfile
	|- Evaluation_tools
	|- masscan-report-converter # masscan进行扫描，导出xls格式的报告
	|- 端口扫描DEMO.py
	|- 内网常用端口扫描.py
	|- 微信实现远程执行系统命令.py
	|- 微信向指定群聊发送信息.py
	|- arpDemo.py
	|- arpDemo1.py
	|- ByPass_SQLFUZZ.py        # fuzz 测试脚本
	|- cre_ipList.py            # 生成一个ip段并导出
	|- Domain_zHost.py          # 域名转换ip主机地址并导出
	|- DVWA_SQL(high).py
	|- DVWA_SQL(medium).py
	|- portscan.py        
	|- SQLMAP_passdog.py
	|- SSH_Connect.py
	|- weather.py               # 天气推送
	|- mail_add_file.py 				# 邮件添加附件发送
	
|-CheckList.xlsx						  # 各行业漏洞测试项


```

##### [ * ] Other
```bash
1. HTTrack                     # 网站克隆工具
2. 中国蚁剑   
3. sqlmap
4. burpsuite_pro_v2.0   
5. w9scan
6. nmap
7. hydra
8. msf

```



Continuous updating....



##### PS: 懒惰使人开发

