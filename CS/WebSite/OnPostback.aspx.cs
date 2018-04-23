using System;
using System.Web.UI;
using DevExpress.Web.ASPxEditors;

public partial class OnPostback : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        hf["IsPostback"] = Page.IsPostBack;
    }
}