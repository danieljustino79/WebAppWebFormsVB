Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        'lbResultado.Text = "get Home e texto Page_Load"
    End Sub

    Sub lbScriptCodeBehind_Click(sender As Object, e As EventArgs)
        lbResultado2.Text = "postback e texto CodeBehind"
    End Sub
End Class