Public Class ClienteBLL
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
End Class
