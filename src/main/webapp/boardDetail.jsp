<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>boardDetail</title>
<script type="text/javascript">
	$(function(){
		$.ajax({
            type : "POST",                        
            url : "leveling.do?exp=${writer.exp}",
            success : function(data) {                               
            	var as=eval(data);
            	
            	$('#lev').val(as[0]);
            	$('#per').val(as[1]);
            },
            error:function(request,status,error){
                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
               }
    	});
		
		$('#bBest').click(function(){
			window.location.href="recommendation.do?recom=best&bcode=${board.bcode}";
		});
		
		$('#bGood').click(function(){
			window.location.href="recommendation.do?recom=good&bcode=${board.bcode}";
		});
		
		$('#bBad').click(function(){
			window.location.href="recommendation.do?recom=bad&bcode=${board.bcode}";
		});
		
		$('#bWorst').click(function(){
			window.location.href="recommendation.do?recom=worst&bcode=${board.bcode}";
		});
		
		
	});
	
	function crecommendation(ccode,flag)
	{
		if(flag=='g')window.location.href="crecommendation.do?bcode=${board.bcode}&recom=good&ccode="+ccode;
		else window.location.href="crecommendation.do?bcode=${board.bcode}&recom=bad&ccode="+ccode;
			
	}
</script>
</head>
<body>

title : ${board.title}<br>
<br>
writer : ${writer.id}<br>
level : <input id="lev"/> <br>
exp : ${writer.exp}<br>
percent : <input id="per"/> <br>
medal : ${writer.medal}&nbsp;<button type="button" id="bMedal">medal</button><br>
<br>
postdate : ${board.postdate}<br>
content : ${board.content}<br>
<br>
best : ${board.point.best}&nbsp;<button type="button" id="bBest">best</button><br>

good : ${board.point.good}&nbsp;<button type="button" id="bGood">good</button><br>

bad : ${board.point.bad}&nbsp;<button type="button" id="bBad">bad</button><br>
worst : ${board.point.worst}&nbsp;<button type="button" id="bWorst">worst</button><br>
cal : ${board.point.cal}<br>
<br>

<c:if test="${files ne null}">
<c:set var="num" value="1" />
<c:forEach var="f" items="${files}">
	file${num } : name = ${f.originname }, filelink=${f.filelink }<br>
<c:set var="num" value="${num+1 }" />
</c:forEach>
</c:if>

<c:if test="${comments ne null}">
<c:set var="num" value="1" />
<c:forEach var="c" items="${comments}">
	comment${num } : content = ${c.content }, writerid=${c.writerid }, postdate=${c.postdate}
	<br>good : ${c.point.good }&nbsp;<button type="button" onclick="crecommendation(${c.ccode},'g')">good</button>&nbsp; bad : ${c.point.bad }&nbsp;<button type="button" onclick="crecommendation(${c.ccode},'b')">bad</button>
	${c.point.cal }<br>
<c:set var="num" value="${num+1 }" />
</c:forEach>
</c:if>

</body>
</html>