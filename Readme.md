# Loading Panel for ASP.NET Web Forms - How to show a loading panel on page load
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4013/)**
<!-- run online end -->

This example demonstrates how to use the loading panel's client-side functionality to invoke the panel on page load. The following approaches are available:
* Show the panel on the first page load and after a postback ([OnLoad.aspx](./CS/WebSite/OnLoad.aspx)).
* Show the panel after a postback only ([OnPostback.aspx](./CS/WebSite/OnPostback.aspx)).

## Overview

Call the panel's client-side [Show](https://docs.devexpress.com/AspNet/js-ASPxClientLoadingPanel.Show) method in the `script` section to invoke a loading panel on page load.

```aspx
<script type="text/javascript">
    lp.Show();
</script>
<dx:ASPxLoadingPanel ID="lp" ClientInstanceName="lp" Modal="true" runat="server" />
```

To hide the loading panel when all client-side objects are already initialized, use the [ASPxGlobalEvents](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxGlobalEvents) component and handle its client-side [ControlsInitialized](https://docs.devexpress.com/AspNet/js-ASPxClientGlobalEvents.ControlsInitialized) event. In the handler, call the panel's [Hide](https://docs.devexpress.com/AspNet/js-ASPxClientLoadingPanel.Hide) method.

```js
function OnControlsInitialized(s, e) {
    // Hide the panel
    // lp.Hide();

    // Hide the panel after timeout
    setTimeout(function () {
        lp.Hide();
    }, 2000);
}
```

```aspx
<dx:ASPxGlobalEvents ID="ge" runat="server">
    <ClientSideEvents ControlsInitialized="OnControlsInitialized" />
</dx:ASPxGlobalEvents>
```

To invoke a loading panel before a postback, handle the form's client-side `onsubmit` event and call the panel's `Show` method in the handler. After the entire page is reloaded, the panel will be hidden.

```js
function OnSubmit() {
    lp.Show();
}
```

```aspx
<form id="frmMain" runat="server" onsubmit="OnSubmit();">
    <dx:ASPxLoadingPanel ID="lp" ClientInstanceName="lp" Modal="true" runat="server" />
</form>
```

## Files to Review

* [OnLoad.aspx](./CS/WebSite/OnLoad.aspx) (VB: [OnLoad.aspx](./VB/WebSite/OnLoad.aspx))
* [OnPostback.aspx](./CS/WebSite/OnPostback.aspx) (VB: [OnPostback.aspx](./VB/WebSite/OnPostback.aspx))
* [OnPostback.aspx.cs](./CS/WebSite/OnPostback.aspx.cs) (VB: [OnPostback.aspx.vb](./VB/WebSite/OnPostback.aspx.vb))

## More Examples

* [Loading Panel for ASP.NET MVC - How to show a loading panel on View load](https://github.com/DevExpress-Examples/how-to-show-loadingpanel-on-view-startup-e4057)
