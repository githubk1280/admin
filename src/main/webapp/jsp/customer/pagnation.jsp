<%@ page language="java" pageEncoding="UTF-8"%>
<div class="pull-right">
	<ul id="pagingUl" class="pagination">
		<li><a href="<%=request.getContextPath()%>/customer/pages/1"><strong>首页</strong></a></li>
		<c:forEach var="page" begin="1" end="${pages}" step="1">
			<li id="${page}"><a href="<%=request.getContextPath()%>/customer/pages/${page}">${page}</a></li>
		</c:forEach>
		<li><a href="<%=request.getContextPath()%>/customer/pages/${pages}"><strong>尾页</strong></a></li>
	</ul>
</div>

<script src="../../resources/js/jquery-1.11.0.js"></script>

<script type="text/javascript">
	$("#pagingUl li").each(function(){
		for(var i=1;i<="${pages}";i++){
			if("${page}"==i){
				$("#${page}").addClass('active');
			};
		};
	});
</script>