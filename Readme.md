<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128565182/11.2.11%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4013)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [OnLoad.aspx](./CS/WebSite/OnLoad.aspx) (VB: [OnLoad.aspx](./VB/WebSite/OnLoad.aspx))
* [OnPostback.aspx](./CS/WebSite/OnPostback.aspx) (VB: [OnPostback.aspx](./VB/WebSite/OnPostback.aspx))
* [OnPostback.aspx.cs](./CS/WebSite/OnPostback.aspx.cs) (VB: [OnPostback.aspx.vb](./VB/WebSite/OnPostback.aspx.vb))
<!-- default file list end -->
# How to show ASPxLoadingPanel on page startup


<p>This example illustrates how to show ASPxLoadingPanel when a page is loaded:</p><p>- Show the <strong>ASPxLoadingPanel</strong> via the client-side <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxLoadingPanelScriptsASPxClientLoadingPanel_Showtopic"><u>ASPxClientLoadingPanel.Show</u></a> method;<br />
- Use the invisible <strong>ASPxGlobalEvents</strong> component. Handle its client-side <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGlobalEventsScriptsASPxClientGlobalEvents_ControlsInitializedtopic"><u>ASPxClientGlobalEvents.ControlsInitialized</u></a> event and hide the loading panel via the client-side <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxLoadingPanelScriptsASPxClientLoadingPanel_Hidetopic"><u>ASPxClientLoadingPanel.Hide</u></a> method when all DevExpress client-side objects are already initialized.</p><p>- OnLoad.aspx - The loading panel is shown during the first load and after a postback;<br />
- OnPostback.aspx - The loading panel is shown after a postback only.</p><p>In order to show a loading panel before each postback, perform the following steps:</p><p>1) Handle the client-side "onsubmit" event of the WebForm;<br />
2) Show a loading panel via the client-side Show method before a postback;<br />
3) Once a round trip to the server is completed, the entire page will be reloaded. As a result, the loading panel will be hidden:</p>

```js
function OnSubmit() {
    lp.Show();
}
```

<p> </p>

```aspx
<form id="frmMain" runat="server" onsubmit="OnSubmit();">
    <dx:ASPxLoadingPanel ... ClientInstanceName="lp">
    </dx:ASPxLoadingPanel>
</form>
```

<p> </p><p><strong>See Also:</strong></p><p><strong>ASP.NET MVC version:</strong><br />
<a href="https://www.devexpress.com/Support/Center/p/E4057">E4057: How to show LoadingPanel on View startup</a></p>

<br/>


