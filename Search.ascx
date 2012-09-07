<%@ Control Language="c#" AutoEventWireup="True" Codebehind="Search.ascx.cs" Inherits="newtelligence.DasBlog.Web.Search" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<script type="text/javascript">
<!--
function doSearch(searchString)
{
	// Trim string.
	searchString = searchString.replace(/^\s+|\s+$/g, "");
	if (searchString.length > 0)
	{
		location.href = "<%# requestPage.SiteConfig.Root %>SearchView.aspx?q=" + encodeURIComponent(searchString);
	}

	return false;
}
-->
</script>
<div class="input-append">
	<input id="searchString" placeholder="Search" onkeypress="javascript:if (event.keyCode == 13) { doSearch(this.value); return false; }" type="text" class="span2 search-query" />
	<input id="searchButton" runat="server" type="submit" value="Search" name='<%# resmgr.GetString("text_search") %>' onclick="doSearch(searchString.value);" class="btn" style="display: none;" />
</div>
