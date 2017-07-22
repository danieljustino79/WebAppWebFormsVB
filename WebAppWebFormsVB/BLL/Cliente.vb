Public Class Cliente
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
End Class