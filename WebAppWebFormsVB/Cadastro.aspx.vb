Public Class Cadastro
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim clienteBLL As New ClienteBLL()

        gvwCliente.DataSource = clienteBLL.GetAll()
        gvwCliente.DataBind()
    End Sub

End Class

'Public Class ClienteBLL
'    Public Function GetAll() As List(Of Cliente)
'        Dim cliente As New Cliente()
'        cliente.id = 1
'        cliente.nome = "Sam"
'        cliente.data = DateTime.Now
'        cliente.referencia = 1
'        Dim lista As New List(Of Cliente)()
'        lista.Add(cliente)
'        Return lista
'    End Function
'End Class

'Public Class Cliente
'    Public Property id() As Integer
'        Get
'            Return m_id
'        End Get
'        Set(value As Integer)
'            m_id = Value
'        End Set
'    End Property
'    Private m_id As Integer
'    Public Property nome() As String
'        Get
'            Return m_nome
'        End Get
'        Set(value As String)
'            m_nome = Value
'        End Set
'    End Property
'    Private m_nome As String
'    Public Property data() As DateTime
'        Get
'            Return m_data
'        End Get
'        Set(value As DateTime)
'            m_data = Value
'        End Set
'    End Property
'    Private m_data As DateTime
'    Public Property referencia() As Integer
'        Get
'            Return m_referencia
'        End Get
'        Set(value As Integer)
'            m_referencia = Value
'        End Set
'    End Property
'    Private m_referencia As Integer
'End Class