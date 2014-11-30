<div class="pull-right">
	<ul class="pagination">
		<li><a href="<%=request.getContextPath()%>/project/pages/1"><strong>first</strong></a></li>
		<c:forEach var="page" begin="1" end="${pages}" step="1">
			<li><a href="<%=request.getContextPath()%>/project/pages/${page}">${page}</a></li>
		</c:forEach>
		<li><a href="<%=request.getContextPath()%>/project/pages/${pages}"><strong>last</strong></a></li>
	</ul>
</div>