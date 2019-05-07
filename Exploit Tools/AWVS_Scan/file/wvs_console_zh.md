```bash
>> USAGE: wvs_console /Scan [URL]  OR  /Crawl [URL]  OR  /ScanFromCrawl [FILE]
                      OR  /ScanWSDL [WSDL URL]
 
>> PARAMETERS                                                                        //参数
       /Scan [URL]               : Scan specified URL                                //扫描特定的URL
       /Crawl [URL]              : Crawl specified URL                               //检索指定的url
       /ScanFromCrawl [FILE]     : Scan from crawling results                        //扫描检索的结果
       /ScanWSDL [WSDL URL]      : Scan web services from WSDL URL                   //扫描来自wsdl的参数URL
 
       /Profile [PROFILE_NAME]   : Use specified scanning profile during scanning    //使用指定的扫描配置进行扫描
       /Settings [FILE]          : Use specified settings template during scanning   //使用指定的设置模板进行扫描
       /LoginSeq [FILE]          : Use specified login sequence                      //使用指定的登录序列
       /Import [FILE(s)]         : Import files during crawl                         //导入检索的地址进行爬行
       /Run [command line]       : Run this command during crawl                     //
       /Selenium [FILE]          : Execute selenium script during crawl              //执行selenium脚本进行爬行
 
       /Save                     : Save scan results                                 //保存结果
       /SaveFolder [DIR]         : Specify the folder were all the saved data will be stored //保存记录的目录
       /GenerateZIP              : Compress all the saved data into a zip file       //对所有的数据进行zip压缩
       /ExportXML                : Exports results as XML                            //将结果以XML方式导出
       /ExportAVDL               : Exports results as AVDL                           //将结果以AVDL方式导出
       /SavetoDatabase           : Save alerts to the database                       //把警告数据保存进数据库
       /SaveLogs                 : Save scan logs                                    //保存扫描日志
       /SaveCrawlerData          : Save crawler data (.CWL file)                     //保存检索(爬行)数据
       /GenerateReport           : Generate a report after the scan was completed    //扫描完成后生成报告
       /ReportFormat [FORMAT]    : Generated report format (REP, PDF, RTF, HTML)     //生成报告的格式
       /ReportTemplate [TEMPLATE]: Specify the report template                       //特定的报告模板
       /Timestamps               : Print current timestamp with each line.           //打印每行的时间戳
       /SendEmail                : Send email notification when scan is completed, using scheduler settings. //扫描结束后发送电子邮件
       /EmailAddress [EMAIL]     : Send email notification to this email address, override scheduler settings. //邮件地址会把之前设置的给覆盖掉
 
       /Verbose                  : Enable verbose mode                               //开启细节模式。也就是发送的具体参数
       /Password                 : Application password (if required)                //如果有需要写入密码
       /?                        : Show this help screen                             //没得说，帮助
 
>> OPTIONS [ ? = TRUE or FALSE ]                                                   //选项  =true 或者是=false
       --GetFirstOnly=?          : Get only the first URL                            //仅仅获取第一个url
       --RestrictToBaseFolder=?  : Do not fetch anything above start folder          //不扫描当前目录以上的其他目录(扫描二级目录有效)
       --FetchSubdirs=?          : Fetch files bellow base folder                    //
       --ForceFetchDirindex=?    : Fetch directory indexes even if not linked        //扫描目录，即使该目录不再链接里面(就是目录匹配)
       --RobotsTxt=?             : Retrieve and process robots.txt                   //从robots.txt里面获取目录进行爬行
       --CaseInsensitivePaths=?  : Use case insensitive paths                        //
       --UseWebKit=?             : Use WebKit based browser for discovery            //使用基于WebKit的浏览器
       --ScanningMode=*          : Scanning mode (* = Quick, Heuristic, Extensive)   //扫描模式(快速、启发式、广泛的)
       --ManipHTTPHeaders=?      : Manipulate HTTP headers                           //http头可以修改(个人暂时理解为可以修改http头进行提交)
       --UseAcuSensor=?          : Use AcuSensor technology                          //使用AcuSensor 技术(不明所以)
       --EnablePortScanning=?    : Enable port scanning                              //启用端口扫描
       --UseSensorDataFromCrawl=*: Use sensor data from crawl(* = Yes, No, Revalidate) //抓取fuzz提交的数据( = 是,否，重新验证)
       --HtmlAuthUser=?          : Username for HTML based authentication            //基于HTTP认证的用户名
       --HtmlAuthPass=?          : Password for HTML based authentication            //基于HTTP认证的密码
       --ToolTimeout=?           : Timeout for testing tool in seconds               //设置提交的超时时间
 
>> EXAMPLES
wvs_console /Scan http://testphp.vulnweb.com  /SaveFolder c:\temp\scanResults\ /Save
wvs_console /ScanWSDL http://test/WS.asmx?WSDL /Profile ws_default /Save
wvs_console /Scan http://testphp.vulnweb.com /Profile default /Save --UseWebKit=false --ScanningMode=Heuristic]]
```

