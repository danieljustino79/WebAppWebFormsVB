<%@ Page Title="Home" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebAppWebFormsVB._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script runat="server">
        Sub lbScriptLocal_Click(sender As Object, e As EventArgs)
            lbResultado.Text = "postback e script local"
        End Sub
    </script>
    <div class="jumbotron">
        <h2>WebForms VB</h2>
        <%--<span id="fraseCodeBehind" runat="server"></span>--%>
    </div>

    <p>Eventos</p>
    <div class="row">
        <div class="col-md-6">            
            <p>
                <asp:LinkButton id="lbScriptLocal" Text="ScriptLocal" OnClick="lbScriptLocal_Click" runat="server"/>
                <i class="glyphicon glyphicon-info-sign" id="dica1"></i>
                <br />
                <asp:Label ID="lbResultado" runat="server"></asp:Label>
            </p>
            <div id="painelDica1" style="display:none">
                pagina.aspx
                <pre>&lt;script runat="server"&gt;
Sub lbScriptLocal_Click(sender As Object, e As EventArgs)
    lbResultado.Text = "postback e script local"
End Sub
&lt;/script&gt;
...
&lt;asp:LinkButton id="lbScriptLocal" 
 Text="ScriptLocal" 
 OnClick="lbScriptLocal_Click" 
 runat="server"/&gt;
&lt;asp:Label ID="lbResultado" runat="server"&gt;&lt;/asp:Label&gt;</pre>
            </div>
        </div>
        <div class="col-md-6">            
            <p>
                <asp:LinkButton id="lbScriptCodeBehind" Text="ScriptCodeBehind" OnClick="lbScriptCodeBehind_Click" runat="server" />
                <i class="glyphicon glyphicon-info-sign" id="dica2"></i>
                <br />
                <asp:Label ID="lbResultado2" runat="server"></asp:Label>
            </p>
            <div id="painelDica2" style="display:none">
                pagina.aspx
                <pre>&lt;asp:LinkButton id="lbScriptCodeBehind" 
 Text="ScriptCodeBehind" 
 OnClick="lbScriptCodeBehind_Click" 
 runat="server"/&gt;
&lt;asp:Label ID="lbResultado2" runat="server"&gt;&lt;/asp:Label&gt;</pre>
                pagina.aspx.vb
                <pre>Sub lbScriptCodeBehind_Click(sender As Object, e As EventArgs)
    lbResultado2.Text = "postback e texto CodeBehind"
End Sub</pre>
            </div>
        </div>
    </div>
    <p>fonte: http://converter.telerik.com/</p>
    <script>
        $('#dica1').click(function () {
            $('#painelDica1').toggle();
        })
        $('#dica2').click(function () {
            $('#painelDica2').toggle();
        })


    </script>
</asp:Content>
