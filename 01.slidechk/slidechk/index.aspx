<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="slidechk.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="/File/switch.css" rel="stylesheet" type="text/css" />
    <script>
        window.onload = function () {
            var switchHTML = document.getElementById("switchID1");
            var chkswitch = document.getElementById("<%=chkswitch.ClientID%>");
            switchHTML.addEventListener("change", function () {
                if (switchHTML.checked == true) {
                    chkswitch.checked = true;
                }
                else {
                    chkswitch.checked = false;
                }
            });
        };
    </script>
    <style>
        .hiddenchk {
            opacity:0;
            position:absolute;
            left:9999px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="switch">
            <input class="switch-checkbox" id="switchID1" type="checkbox" name="switch-checkbox" />
            <label class="switch-label" for="switchID1">
                <span class="switch-txt" turnOn="是" turnOff="否"></span>
                <span class="switch-Round-btn"></span>
            </label>
        </div>
        <asp:Panel ID="Panel1" runat="server">
            <asp:CheckBox ID="chkswitch" runat="server" CssClass="hiddenchk" />
        </asp:Panel>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </form>
</body>
</html>