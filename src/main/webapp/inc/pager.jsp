<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<link href="/css/pager.css" rel="stylesheet"> 
<script src="/js/targetboardlist.js"></script>   
<section class="target-pager margin-top">
	<h1 class="hidden">페이저</h1>
	<p class="inline prev">
		<c:set var="hide" value="${pager.startPage-pager.pagerCnt  <= 0?'hidden':''}"></c:set>
		<i class="fas fa-caret-left ${hide }"></i>
		<input type="hidden" value="${pager.startPage-pager.pagerCnt }" name="prev"/>
	</p>
	<ul class="inline-list">
		<c:set var="page" value="1" />
		

		<c:if test="${not empty param.page}">
			<c:set var="page" value="${param.page}" />
		</c:if>
		
		<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }">
			
			<c:set var="cls" value="${i==page?'font-bold underline':''}" />
			
			<li class="${cls}"><a class="page">${i}</a></li>
		</c:forEach>				
	</ul>
	<p class="inline next">
		<c:set var="hide2" value="${pager.endPage==pager.maxPage?'hidden':''}"></c:set>
		<i class="fas fa-caret-right ${hide2 }"></i>
		<input type="hidden" value="${pager.endPage+1 }" name="next"/>
	</p>
</section>