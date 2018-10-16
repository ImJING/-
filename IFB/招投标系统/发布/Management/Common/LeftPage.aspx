<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeftPage.aspx.cs" Inherits="JSMSTC.Web.Management.Common.LeftPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>淮安市政府招投标系统</title>

    <script type="text/javascript" src="../../js/jquery.js"></script>

    <script type="text/javascript" src="../../js/chili-1.7.pack.js"></script>

    <script type="text/javascript" src="../../js/jquery.easing.js"></script>

    <script type="text/javascript" src="../../js/jquery.dimensions.js"></script>

    <script type="text/javascript" src="../../js/jquery.accordion.js"></script>

    <script language="javascript">
        jQuery().ready(function() {
            getHeight();
            jQuery('#navigation').accordion({
                header: '.head',
                navigation1: true,
                event: 'click',
                fillSpace: true, 
                animated: 'bounceslide'
            });


        });

        function getHeight() {
            var div = document.getElementById("menu");
            div.style.height = document.documentElement.clientHeight;
        }
    </script>

    <style type="text/css">
        body
        {
            margin: 0px;
            padding: 0px;
            font-size: 12px;
        }
        #navigation
        {
            margin: 0px;
            padding: 0px;
            width: 147px;
        }
        #navigation a.head
        {
            cursor: pointer;
            background: url(../../images/main_34.gif) no-repeat scroll;
            display: block;
            font-weight: bold;
            margin: 0px;
            padding: 5px 0 5px;
            text-align: center;
            font-size: 12px;
            text-decoration: none;
        }
        #navigation ul
        {
            border-width: 0px;
            margin: 0px;
            padding: 0px;
            text-indent: 0px;
        }
        #navigation li
        {
            list-style: none;
            display: inline;
        }
        #navigation li li a
        {
            display: block;
            font-size: 12px;
            text-decoration: none;
            text-align: center;
            padding: 3px;
        }
        #navigation li li a:hover
        {
            background: url(../../images/tab_bg.gif) repeat-x;
            border: solid 1px #adb9c2;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="menu" style="display: marker;" onload="getHeight()">
        <ul id="navigation">
            <li id="liTender" visible="false" runat="server"><a class="head">招投标管理</a>
                <ul>
                    <li id="liGInfoBaseSet" runat="server"><a href="../Government/ManageTender.aspx"
                        target="rightFrame">招标信息管理中心</a></li>
                </ul>
            </li>
            <li id="liEnterprise" visible="false" runat="server"><a class="head">企业管理</a>
                <ul>
                    <li id="liEInfoBaseSet" runat="server"><a href="../Government/EpseList.aspx" target="rightFrame">
                        企业信息管理</a></li>
                </ul>
            </li>
            <li id="liEnterpriseManage" visible="false" runat="server"><a class="head">企业后台管理</a>
                <ul>
                    <li id="liSInfoBaseSet" runat="server"><a href="../Enterprise/EnterpriseManager.aspx"
                        target="rightFrame">竞标管理</a></li>
                    <li id="EpseInfo" runat="server"><a href="../Common/AlterUserInfo.aspx" target="rightFrame">
                        基本信息</a></li>
                    <%-- <li id="Complaint" runat="server"><a href="../Enterprise/ComplaintList.aspx" target="rightFrame">
                        投诉建议</a></li>--%>
                </ul>
            </li>
            <li id="liSystemManage" visible="false" runat="server"><a class="head">系统管理</a>
                <ul>
                    <li id="liCaptitude" runat="server"><a href="../Government/ProCaptitude.aspx" target="rightFrame">
                        类型管理</a></li>
                    <li id="li1" runat="server"><a href="../Government/EpseCaptitude.aspx" target="rightFrame">
                        资质管理</a></li>
                        <li id="liAdminManage" runat="server"><a href="../Government/AdminUserManage.aspx" target="rightFrame">
                        管理员信息管理</a></li>
                    <li id="liSysDepartManage" runat="server"><a href="../SystemManage/RequestDepartMentList.aspx"
                        target="rightFrame">需求部门管理</a></li>
                    <li id="LiSysUserManage" runat="server"><a href="../SystemManage/UserManage.aspx"
                        target="rightFrame">人员信息管理</a> </li>
                </ul>
            </li>
            <li id="liFixedManage" visible="false"  runat="server"><a class="head">报价咨询库管理</a>
                <ul>
                    <li><a href="../OfferManage/ManageCompanyList.aspx?TabID=1"  target="rightFrame">企业信息管理</a></li>
                    <li><a href="../OfferManage/ManageProjectList.aspx?TabID=1" target="rightFrame">项目信息管理</a></li>
                    <li><a href="../OfferManage/ManageNumberList.aspx?TabID=1" target="rightFrame">抽取期别维护</a></li>
                </ul>
            </li>
             <li id="liFixedManage1" visible="false"  runat="server"><a class="head">房屋建筑工程监理甲级库</a>
                <ul>
                    <li><a href="../OfferManage/ManageCompanyList.aspx?TabID=2"  target="rightFrame">企业信息管理</a></li>
                    <li><a href="../OfferManage/ManageProjectList.aspx?TabID=2" target="rightFrame">项目信息管理</a></li>
                    <li><a href="../OfferManage/ManageNumberList.aspx?TabID=2" target="rightFrame">抽取期别维护</a></li>
                </ul>
            </li>
            <li id="liFixedManage2" visible="false"  runat="server"><a class="head">招标代理库</a>
                <ul>
                    <li><a href="../OfferManage/ManageCompanyList.aspx?TabID=3"  target="rightFrame">企业信息管理</a></li>
                    <li><a href="../OfferManage/ManageProjectList.aspx?TabID=3" target="rightFrame">项目信息管理</a></li>
                    <li><a href="../OfferManage/ManageNumberList.aspx?TabID=3" target="rightFrame">抽取期别维护</a></li>
                </ul>
            </li>
            <li id="liFixedManage3" visible="false"  runat="server"><a class="head">市政工程监理库</a>
                <ul>
                    <li><a href="../OfferManage/ManageCompanyList.aspx?TabID=4"  target="rightFrame">企业信息管理</a></li>
                    <li><a href="../OfferManage/ManageProjectList.aspx?TabID=4" target="rightFrame">项目信息管理</a></li>
                    <li><a href="../OfferManage/ManageNumberList.aspx?TabID=4" target="rightFrame">抽取期别维护</a></li>
                </ul>
            </li>
              <li id="liFixedManage4" visible="false"  runat="server"><a class="head">房屋建筑工程监理甲级库</a>
                <ul>
                    <li><a href="../OfferManage/ManageCompanyList.aspx?TabID=5"  target="rightFrame">企业信息管理</a></li>
                    <li><a href="../OfferManage/ManageProjectList.aspx?TabID=5" target="rightFrame">项目信息管理</a></li>
                    <li><a href="../OfferManage/ManageNumberList.aspx?TabID=5" target="rightFrame">抽取期别维护</a></li>
                </ul>
            </li>
            <li id="liDemanderManage" visible="false" runat="server"><a class="head">项目需求管理</a>
                <ul>
                    <li><a href="../DemanderManage/ManageTender.aspx" target="rightFrame">项目需求列表</a></li>
                </ul>
            </li>
        </ul>
    </div>
    </form>
</body>
</html>
