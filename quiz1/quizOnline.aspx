<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quizOnline.aspx.cs"  Inherits="quiz1.quizOnline" %>

<!DOCTYPE html>
<style>  
body{
  background:#161616;
  color:#888;
  font-family: 'Ubuntu Mono', sans-serif;
  text-transform:uppercase;
}
.box{

  width:90%;
  max-width:450px;
  height:auto;
  margin:0 auto;
  margin-top:100px;
  background:#222;
  border-radius:15px;
  box-shadow: 0px 3px 10px 1px rgba(0, 0, 0, 0.9);
}
.content{
  width:85%;
  height:auto;
  margin:0 auto;
  padding:10px 0px;
  text-align:center;
}
h1{
  font-size: 24px;
  font-weight:400;
  color:#FFBF00;
  letter-spacing:0.125em;
  text-align:center;
}
.field{
  width:100%;
  margin:10px auto;
  padding:10px;
  background:#2c2c2c;
  border:none;
  box-shadow: 0px 1px 0px 0px #111;
  border-radius:3px;
  outline:none;
  color:#FFBF00;
  font-weight:700;
  letter-spacing:0.125em;
  text-align:center;
  text-transform:uppercase;
}
 
::-webkit-input-placeholder{ /* WebKit browsers */
  color:#5A5A5A;
}
:-moz-placeholder{ /* Mozilla Firefox 4 to 18 */
  color:#5A5A5A;
}
input[type="button"], input[type="submit"], button
 
{
  margin:10px auto;
  padding:10px;
  background:#161616;
  border:none;
  box-shadow: 0px 1px 0px 0px #111;
  border-radius:3px;
  outline:none;
  color:#FFBF00;
  font-weight:700;
  letter-spacing:0.125em;
  text-align:center;
  text-transform:uppercase;
}
input:hover{
  background:#FFBF00;
  color:#333;
}
input:active {
        background: #FACC2E;
        color: #333;
    }
.btns{
  margin:10px auto;
  padding:10px;
  background:#161616;
  border:none;
  box-shadow: 0px 1px 0px 0px #111;
  border-radius:30px;
  outline:none;
  color:#FFBF00;
  font-weight:700;
  letter-spacing:0.125em;
  text-align:center;
  text-transform:uppercase;
}
.btns:hover{
  background:#FFBF00;
  color:#333;
}
.btns:active{
  background:#FACC2E;
  color:#333;
}  
table{text-align:left;}
#menuTabs{
    margin-left:60px;
    margin-right:60px;
    text-align:center;
}
input[type="radio"]{
      cursor: pointer;
}
a:-webkit-any-link {
    
    text-align:center;
    color:#FFBF00;
    cursor: pointer;
    text-decoration: none;
    text-decoration-line: none;
    text-decoration-style: initial;
    text-decoration-color: initial;
}
hr{background-color:#FFBF00;;
   height:3px;
}


</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="icon" type="image/svg" href="London.png" />
    <script>  
        function Check(popUpPage) {
            window.open(popUpPage, 'null', );
        }
        </script>  
   
    <title>London Underground Quiz</title>
</head>
<body >
    <form id="form1" runat="server" >
        <div style="text-align: center;">
            <br />
            <h1 style="text-align:center"><b>London Underground Quiz</b></h1>
            <br /> 
            

            <hr/>
            <br />
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <table class="content">
                        <tr>
                            <td class="field">
                               <%-- <%#Eval("QuestionId")%> :--%> <%#Eval("Question")%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                
                                
                                <asp:RadioButton ID="RadioOption1" runat="server" Text='<%#Eval("Option1")%>' GroupName="rdQuiz"></asp:RadioButton>
                                <asp:RadioButton ID="RadioOption2" runat="server" Text='<%#Eval("Option2")%>' GroupName="rdQuiz"></asp:RadioButton>
                                <asp:RadioButton ID="RadioOption3" runat="server" Text='<%#Eval("Option3")%>' GroupName="rdQuiz"></asp:RadioButton>
                                <asp:RadioButton ID="RadioOption4" runat="server" Text='<%#Eval("Option4")%>' GroupName="rdQuiz"></asp:RadioButton>
                                <br />

                            <asp:Label ID="LabCorrectAns" runat="server" Text='<%#Eval("QuestionAnswer")%>' Visible="false" BackColor="Green"></asp:Label>
                                
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <asp:Label ID="LabSelectUserOpt" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <br />
                    </table>
                </ItemTemplate>
            </asp:Repeater>
            <hr />
            <asp:Button ID="Submit" CssClass="btns" runat="server"  Text="Submit" OnClick="Submit_Click" />
        </div>
        <table runat="server" visible="false" ID="table1"  style="width:100%;">
            <tr>
                <td>
                     <asp:Button ID="again" runat="server"  Text="Check the result" OnClientClick="return Check('result.aspx');"  />
                </td>
            
                <td >   <asp:Panel ID="Panel1" BorderWidth="5" GroupingText="Result"  runat="server">
                        <asp:Label ID="LabelScore" runat="server"  ></asp:Label>
                        <%#Eval("QuestionId")%>
                    </asp:Panel>
                </td>
            
            
                <td style="display:flex;">
                      <asp:Button ID="reload" runat="server"  Text="Start again" OnClick="reload_Click1"/>
                </td>
            </tr>
        </table>
    </form>
    
</body>
</html>
