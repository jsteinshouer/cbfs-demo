<h3>Documents</h3>
<cfoutput>
<ul>
	<cfloop array="#prc.docs#" index="docPath">
		<li><a href="/main/download/?doc=#encodeForURL(docPath)#" target="_blank">#docPath#</a></li>
	</cfloop>
</ul>
</cfoutput>