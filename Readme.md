<!-- default file list -->
*Files to look at*:

* **[Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))**
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# ASPxButton - How to execute a postback and disable the button on the first click to prevent clicking it multiple times


<p>In some scenarios, it's necessary to allow a user to click a certain button just once and prevent processing subsequent clicks. This example illustrates how to disable ASPxButton after the first click and a postback sending to prevent clicking it multiple times. <br>It's possible to disable the button on the client side by using the <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.Scripts.ASPxClientButton.SetEnabled.method">SetEnabled</a> method. However, ASPxButton doesn't send a postback when it's disabled in by using this approach. To achieve the desired result, disable the button by using SetEnabled in this client-side Click event handler and perform this button's postback programmatically via the __doPostBack method.<br>Note that in this case, it's necessary to additionally disable the button in the server-side Click event handler by setting its <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxButton.ClientEnabled.property">ClientEnabled</a> property because the disabled state applied by using the client-side SetEnabled method will be lost after this postback.</p>

<br/>


