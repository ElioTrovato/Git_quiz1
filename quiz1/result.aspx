<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="result.aspx.cs" Inherits="quiz1.result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" type="image/svg" href="London.png" />
        <title>London Underground Quiz</title>  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <asp:Table ID="Table1" runat="server" Font-Size="X-Large" Font-Names="Palatino" BackColor="Orange" BorderColor="DarkRed" BorderWidth="2" ForeColor="Snow" CellPadding="5"  CellSpacing="5">
            <asp:TableHeaderRow runat="server" ForeColor="Snow" BackColor="OliveDrab" Font-Bold="true">
                <asp:TableHeaderCell >ID</asp:TableHeaderCell>
                <asp:TableHeaderCell Width="450px">Question</asp:TableHeaderCell>
                <asp:TableHeaderCell Width="450px">Answer</asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow ID="TableRow1" runat="server" BackColor="OrangeRed">
                <asp:TableCell><%#Eval("QuestionId")%></asp:TableCell>
                <asp:TableCell><%#Eval("Question")%>?</asp:TableCell>
                <asp:TableCell>The correct answer is: <%#Eval("QuestionAnswer")%></asp:TableCell>
            </asp:TableRow>
                        </asp:Table>
                        <br />
                    </table>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
