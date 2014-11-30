<%@ page language="java" pageEncoding="UTF-8"%>
<div class="pull-right">
	<ul class="pagination">
		<li><a href="<%=request.getContextPath()%>/project/pages/1"><strong>首页</strong></a></li>
		<c:forEach var="page" begin="1" end="${pages}" step="1">
			<li><a href="<%=request.getContextPath()%>/project/pages/${page}">${page}</a></li>
		</c:forEach>
		<li><a href="<%=request.getContextPath()%>/project/pages/${pages}"><strong>尾页</strong></a></li>
	</ul>
</div>