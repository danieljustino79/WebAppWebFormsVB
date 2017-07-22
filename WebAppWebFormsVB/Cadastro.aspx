<%@ Page Title="Cadastro" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.vb" Inherits="WebAppWebFormsVB.Cadastro" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p>Grid</p><i class="glyphicon glyphicon-info-sign" id="dica1" title="GridView"></i>
    <div class="btn-group pull-right">
  <button type="button" class="btn btn-default">Add</button>
  <button type="button" class="btn btn-default">Edit</button>
  <button type="button" class="btn btn-default">Del</button>
</div>
    <div class="row">
        <div class="col-md-10">
            <asp:GridView ID="gvwCliente" runat="server"
            CssClass="table table-bordered"
            GridLines="None"
            AutoGenerateColumns="false"
            >
            <Columns>
            <asp:BoundField DataField="id" HeaderText="Id"  />
            <asp:BoundField DataField="nome" HeaderText="Nome" SortExpression="nome" />
            <asp:BoundField DataField="data" HeaderText="Data" SortExpression="data" />
            <asp:BoundField DataField="referencia" HeaderText="Ref"  />
            </Columns>
            </asp:GridView>
        </div>
    </div>
    <div id="painelDica1" style="display:none">
        Cliente.vb
        <pre>Public Class Cliente
    Public Property id() As Integer
        Get
            Return m_id
        End Get
        Set(value As Integer)
            m_id = value
        End Set
    End Property
    Private m_id As Integer
    Public Property nome() As String
        Get
            Return m_nome
        End Get
        Set(value As String)
            m_nome = value
        End Set
    End Property
    Private m_nome As String
    Public Property data() As DateTime
        Get
            Return m_data
        End Get
        Set(value As DateTime)
            m_data = value
        End Set
    End Property
    Private m_data As DateTime
    Public Property referencia() As Integer
        Get
            Return m_referencia
        End Get
        Set(value As Integer)
            m_referencia = value
        End Set
    End Property
    Private m_referencia As Integer
End Class</pre>
        ClienteBLL.vb
        <pre>Public Class ClienteBLL
    Public Function GetAll() As List(Of Cliente)
        Dim cliente As New Cliente()
        cliente.id = 1
        cliente.nome = "Sam"
        cliente.data = DateTime.Now
        cliente.referencia = 1
        Dim lista As New List(Of Cliente)()
        lista.Add(cliente)

        cliente = New Cliente()
        cliente.id = 2
        cliente.nome = "Yan"
        cliente.data = DateTime.Now.AddHours(2)
        cliente.referencia = 11
        lista.Add(cliente)

        Return lista
    End Function
End Class</pre>
                pagina.aspx
                <pre>&lt;asp:GridView ID="gvwCliente" runat="server"
 CssClass="table table-bordered"
 GridLines="None"
 AutoGenerateColumns="false"&gt;
    &lt;Columns&gt;
    &lt;asp:BoundField DataField="id" HeaderText="Id"  /&gt;
    &lt;asp:BoundField DataField="nome" HeaderText="Nome" /&gt;
    &lt;asp:BoundField DataField="data" HeaderText="Data" /&gt;
    &lt;asp:BoundField DataField="referencia" HeaderText="Ref"  /&gt;
    &lt;/Columns&gt;
&lt;/asp:GridView&gt;</pre>
        pagina.aspx.vb
        <pre>Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    Dim clienteBLL As New ClienteBLL()
    gvwCliente.DataSource = clienteBLL.GetAll()
    gvwCliente.DataBind()
End Sub</pre>
            </div>

<script>
    $('#dica1').click(function () {
        $('#painelDica1').toggle();
    })
    $('#dica2').click(function () {
        $('#painelDica2').toggle();
    })


    </script>
</asp:Content>