<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OnPostback.aspx.cs" Inherits="OnPostback" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxHiddenField" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGlobalEvents" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxLoadingPanel" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function OnControlsInitialized(s, e) {
            //Hide
            //lp.Hide();

            //Hide After Timeout
            setTimeout(function () {
                lp.Hide();
            }, 2000);
        }
    </script>
</head>
<body>
    <form id="frmMain" runat="server">
    <dx:ASPxHiddenField ID="hf" runat="server" ClientInstanceName="hf">
    </dx:ASPxHiddenField>
    <dx:ASPxLoadingPanel ID="lp" ClientInstanceName="lp" Modal="true" runat="server">
    </dx:ASPxLoadingPanel>
    <script type="text/javascript">
        if (hf.Get("IsPostback"))
            lp.Show();
    </script>
    <dx:ASPxGlobalEvents ID="ge" runat="server">
        <ClientSideEvents ControlsInitialized="OnControlsInitialized" />
    </dx:ASPxGlobalEvents>
    <dx:ASPxButton ID="btn" runat="server" Text="Postback">
    </dx:ASPxButton>
    <br />
    <a href="Default.aspx">Home</a>
    </form>
</body>
</html>