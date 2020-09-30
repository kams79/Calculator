<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Calculator.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <script type="text/javascript">
        // Now we need to implement the KeysShortcut
        function KeysShortcut(event) {

            var key_press = String.fromCharCode(event.keyCode);
            var key_code = event.keyCode;

            //Number Click
            if (key_press == 1) {
                document.getElementById("Button9").click();
            }
            if (key_press == 2) {
                document.getElementById("Button10").click();
            }
            if (key_press == 3 || key_code == 32) {
                document.getElementById("Button11").click();
            }
            if (key_press == 4) {
                document.getElementById("Button5").click();
            }
            if (key_press == 5) {
                document.getElementById("Button6").click();
            }
            if (key_press == 6 && event.shiftKey == false) {
                document.getElementById("Button7").click();
            }
            if (key_press == 7) {
                document.getElementById("Button1").click();
            }
            if (key_press == 8 && event.shiftKey == false) {
                document.getElementById("Button2").click();
            }
            if (key_press == 9) {
                document.getElementById("Button3").click();
            }
            if (key_press == 0) {
                document.getElementById("Button13").click();
            }

            //Enter Click
            if (key_code == 13) {
                document.getElementById("Button19").click();
            }

            //Operation Click
            if ( (key_code == 187 && event.shiftKey) || (key_code == 107) || (key_code == 61 && event.shiftKey)) {
                document.getElementById("Button16").click();
            }
            if ((key_code == 189 && event.shiftKey == false) || (key_code == 107)) {
                document.getElementById("Button12").click();
            }
            if ((key_code == 56 && event.shiftKey) || ( key_code == 106)) {
                document.getElementById("Button8").click();
            }
            if (key_code == 111 || (key_code == 191 && event.shiftKey == false)) {
                document.getElementById("Button4").click();
            }
            if ((key_code == 57 && event.shiftKey) || (key_code == 219)) {
                document.getElementById("Button14").click();
            }
            if ((key_code == 48 && event.shiftKey) || (key_code == 221)) {
                document.getElementById("Button15").click();
            }
        }
    </script>
</head>
<body onkeydown="KeysShortcut(event)">
    <form id="form1" runat="server">
            <br />

    <div align="center">

        <asp:TextBox ID="TextBox1" runat="server" Width="246px" ReadOnly="true"></asp:TextBox>

    </div>

    <div align="center">

        <asp:Button ID="Button1" runat="server" Text="7" OnClick="Button_Click" />
        <asp:Button ID="Button2" runat="server" Text="8" OnClick="Button_Click" />
        <asp:Button ID="Button3" runat="server" Text="9" OnClick="Button_Click" />
        <asp:Button ID="Button4" runat="server" Text=":" OnClick="Button_Click" />

    </div>

    <div align="center">

        <asp:Button ID="Button5" runat="server" Text="4" OnClick="Button_Click" />
        <asp:Button ID="Button6" runat="server" Text="5" OnClick="Button_Click" />
        <asp:Button ID="Button7" runat="server" Text="6" OnClick="Button_Click" />
        <asp:Button ID="Button8" runat="server" Text="x" OnClick="Button_Click" />

    </div>

    <div align="center">

        <asp:Button ID="Button9" runat="server" Text="1" OnClick="Button_Click" />
        <asp:Button ID="Button10" runat="server" Text="2" OnClick="Button_Click" />
        <asp:Button ID="Button11" runat="server" Text="3" OnClick="Button_Click" />
        <asp:Button ID="Button12" runat="server" Text="-" OnClick="Button_Click" />

    </div>

    <div align="center">

        <asp:Button ID="Button13" runat="server" Text="0" OnClick="Button_Click" />
        <asp:Button ID="Button14" runat="server" Text="(" OnClick="Button_Click" />
        <asp:Button ID="Button15" runat="server" Text=")" OnClick="Button_Click" />
        <asp:Button ID="Button16" runat="server" Text="+" OnClick="Button_Click" />

    </div>

    <div align="center">

        <asp:Button ID="Button17" runat="server" Text="C" OnClick="Button_Clear" />
        <asp:Button ID="Button18" runat="server" Text="CE" OnClick="Button_ClearEntry" />
        <asp:Button ID="Button19" runat="server" Text="Enter" OnClick="Equal_Click" />
    </div>
    </form>
</body>
</html>
