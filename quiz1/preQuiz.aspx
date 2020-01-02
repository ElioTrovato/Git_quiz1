<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="preQuiz.aspx.cs" Inherits="quiz1.preQuiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">  
    <link rel="icon" type="image/svg" href="London.png" />

        <title>London Underground Quiz</title>  
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js" type="text/javascript">
           
        </script>  
        <style>  
            body {  
                margin: auto;  
               
            }  
              
            .main-div {  
                position: absolute;  
                display: table;  
                width: 100%;  
                height: 100%;  
                
            }  
              
            .main-inner-div {  
                display: table-cell;  
                vertical-align: middle;  
                text-align: center;  
            }  
              
            .main-content {  
                display: inline-block;  
                text-align: left;  
                background-image: url("img1.jpg");  
                padding: 200px;  
                border: 4px solid #161616;  
                border-radius: 10px;  
                background-size: cover; 
                opacity: 0.8;
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
            .auto-style1 {
                width: 381px;
                height: 237px;
            }
            .auto-style2 {
                position: absolute;
                display: table;
                width: 100%;
                height: 100%;
                left: 0px;
                top: 3px;
                margin-bottom: 83px;
            }
        </style>  
        <script>  
            function StartTest(popUpPage) {
                window.open(popUpPage, 'null', );
            }
        </script>  
    </head>  
  
    <body>  
        <form id="form1" runat="server">  
            <div class="auto-style2">  
                <div class="main-inner-div">  
                    <div class="main-content">  
                        <table class="auto-style1">  
                            <tr>  
                                <td style="text-align:center;">  
                                    <b>  
<asp:Label ID="lbstatus" runat="server"></asp:Label>  
</b>  
                                </td>  
                            </tr>  
                            <tr>  
                                <td style="text-align:center; color: #ffffff; border: 2px solid #FFBF00; border-radius:10px; opacity:0.9;  background-color:black; font-size: 30px;"><b>The London Underground Quiz</b></td>  
                            </tr>  
                            <tr>  
                                <td style="text-align: center;">  
                                    <asp:Button ID="btnStartTest" Text="Start" runat="server" OnClientClick="return StartTest('quizOnline.aspx');" CssClass="btn" />  
                                </td>  
                            </tr>  
                        </table>  
                    </div>  
                </div>  
            </div>  
        </form>  
    </body>  
    </html>