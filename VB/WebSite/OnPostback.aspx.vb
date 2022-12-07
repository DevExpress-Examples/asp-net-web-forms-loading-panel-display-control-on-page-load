Imports Microsoft.VisualBasic
Imports System
Imports System.Web.UI
Imports DevExpress.Web

Partial Public Class OnPostback
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		hf("IsPostback") = Page.IsPostBack
	End Sub
End Class