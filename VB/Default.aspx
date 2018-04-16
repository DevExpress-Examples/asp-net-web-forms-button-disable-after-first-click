<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script>
        function OnClick(s,e){ 
            s.SetText('Purchased'); 
            s.SetEnabled(false);  
            __doPostBack(s.name);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxButton runat="server" ID="btnPurchase" ClientInstanceName="btnPurchase" OnClick="btnPurchase_Click" Text="Complete Purchase" AutoPostBack="False" ClientEnabled="True">
            <ClientSideEvents Click="OnClick" />
        </dx:ASPxButton>
    </form>
</body>
</html>