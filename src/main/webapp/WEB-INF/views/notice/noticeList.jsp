<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>공지사항 목록</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
	<style>
		.content ul {
			list-style-type: none;
		}
		.content ul >li {
			list-style-type: none;
		}
		.icon {
			color: #2B3A55;
		}
		.menu-list a {
			min-width: 159px;
		}
		.pagination-link.is-current {
			background-color:#2B3A55;
			border-color: #2B3A55;
		}
		.pagination-link {
			background-color: #ffffff;
		}
		.select:not(.is-multiple):not(.is-loading)::after {
			border-color: #2B3A55;
		}
	</style>
</head>
<body>
<!-- 헤더 부분 인클루드 -->
<jsp:include page="../include/hd.jsp"></jsp:include>
<div class="container is-fullhd">
<%--	<div class="content" id="content">--%>
<%--	    <div class="row column text-center">--%>
<%--	      <h2 class="h1">공지사항</h2>--%>
<%--	      <hr>--%>
<%--	      <div class="container">--%>

<%--				<section class="main-content columns is-fullheight">--%>

<%--					<aside class="column is-2 is-narrow-mobile is-fullheight section is-hidden-mobile">--%>
<%--						<p class="menu-label is-hidden-touch">고객센터</p>--%>
<%--						<ul class="menu-list">--%>
<%--							<li>--%>
<%--								<a href="${path1 }/notice/list.do" class="is-active" style="background-color: #2B3A55;">--%>
<%--									<span class="icon" style="color: #FFFFFF"><i class="fa fa-solid fa-bell"></i></span> 공지사항--%>
<%--								</a>--%>
<%--							</li>--%>
<%--							<li>--%>
<%--								<a href="${path1 }/qna/list.do" class="">--%>
<%--									<span class="icon"><i class="fa fa-solid fa-question"></i></span> 묻고 답하기--%>
<%--								</a>--%>
<%--								<ul>--%>
<%--									<li>--%>
<%--										<a href="#">--%>
<%--											<span class="icon is-small"><i class="fa fa-window-maximize"></i></span> Link1--%>
<%--										</a>--%>
<%--									</li>--%>
<%--									<li>--%>
<%--										<a href="#">--%>
<%--											<span class="icon is-small"><i class="fa fa-link"></i></span> Link2--%>
<%--										</a>--%>
<%--									</li>--%>
<%--								</ul>--%>
<%--							</li>--%>
<%--							<li>--%>
<%--								<a href="${path1 }/faq/list.do" class="">--%>
<%--									<span class="icon"><i class="fa fa-window-maximize"></i></span> 자주 묻는 질문--%>
<%--								</a>--%>
<%--							</li>--%>
<%--						</ul>--%>
<%--					</aside>--%>

<%--					<div class="container column is-10">--%>
<%--						<div class="section">--%>
<%--							<c:forEach items="${noticeList }" var="notice" varStatus="status">--%>
<%--								<a href="${path1}/notice/detail.do?nno=${notice.nno }">--%>
<%--								<div class="card">--%>
<%--									<div class="card-content">--%>
<%--										<fmt:parseDate value="${notice.resdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />--%>
<%--										<div class="content"><span style="font-weight:bold;">[공지] ${notice.title }</span> <br>--%>
<%--											<span>조회수</span><span style="color:#CE7777 "> ${notice.visit }</span>--%>
<%--											<span style="float:right;"><fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" /> </span>--%>
<%--										</div>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--								</a>--%>
<%--								<br/>--%>
<%--							</c:forEach>--%>
<%--							<br />--%>
<%--						</div>--%>
<%--					</div>--%>

<%--				</section>--%>
				<%-- <c:if test='${sid eq "admin"}'>  --%>

<%--				<div class="button-group">--%>
<%--					<a class="button" href="${path1 }/notice/insert.do">글쓰기</a>--%>
<%--				</div>--%>
				<%-- </c:if> --%>
<%--	      </div>--%>

<%--	    </div>--%>
<%--	</div>--%>

	<div class="columns">
		<div class="column is-2">
			<aside class="menu">
				<span class="box has-text-white has-text-weight-semibold has-text-centered is-size-5">
					고객센터
				</span>
				<ul class="menu-list">
					<li>
						<a href="${path1 }/notice/list.do">공지사항</a>
					</li>
					<li>
						<a href="${path1 }/qna/list.do">묻고 답하기</a>
					</li>
					<li>
						<a href="${path1 }/faq/list.do">자주 묻는 질문</a>
					</li>
				</ul>
			</aside>
		</div>
		<div class="column is-10">
			<form action="${path1 }/notice/list.do" method="get" class="field has-addons has-addons-right">
				<p class="control">
                <span class="select">
                    <select id="type" name="type">
                        <option value="title">제목</option>
						<option value="content">내용</option>
                    </select>
                </span>
				</p>
				<p class="control">
					<input class="input" type="text" id="keyword" name="keyword" placeholder="검색어를 입력하세요" value="${keyword }">
				</p>
				<p class="control">
					<input type="submit" class="button is-mainColor" value="검색" />
				</p>
			</form>
			<div class="conwrap">
				<div class="box">
					<%--<h6>자유게시판</h6>--%>
					<span class="title">공지사항</span>
				</div>

				<div class="columns">
					<div class="column is-6">
						<div class="card events-card">
							<header class="card-header">
								<p class="card-header-title">추천 많은 글</p>
							</header>
							<div class="card-table">
								<div class="content">
									<table class="table is-fullwidth is-striped">
										<tbody>
										<tr>
											<td width="5%"><i class="fa fa-bell-o"></i></td>
											<td>Lorum ipsum dolem aire</td>
											<td class="level-right"><a class="button is-small is-primary" href="#">Action</a></td>
										</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>

					<div class="column is-6">
						<div class="card events-card">
							<header class="card-header">
								<p class="card-header-title">댓글 많은 글</p>
							</header>
							<div class="card-table">
								<div class="content">
									<table class="table is-fullwidth is-striped">
										<tbody>
										<tr>
											<td width="5%"><i class="fa fa-bell-o"></i></td>
											<td>Lorum ipsum dolem aire</td>
											<td class="level-right"><a class="button is-small is-primary" href="#">Action</a></td>
										</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="box content">
				<c:forEach items="${noticeList }" var="notice" varStatus="status">
					<article class="post">
							<%--<h4>${free.title }</h4>--%>
						<a href="${path1}/notice/detail.do?nno=${notice.nno }"><h4>${notice.title }</h4></a>
								<div class="media">
							<div class="media-content">
								<div class="content">
										<%--<p>
                                            <a href="#">@jsmith</a> replied 34 minutes ago &nbsp;
                                            <span class="tag">Question</span>
                                        </p>--%>
									<p>
										조회수
										<span>${notice.visit }</span>
									</p>
								</div>
							</div>
							<div class="media-right">
<%--								<span class="has-text-grey-light"><i class="fa fa-comments"></i> 1</span>--%>
									<fmt:parseDate value="${notice.resdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
									<span style="float:right; font-weight: bold;"><fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" /> </span>
							</div>
						</div>
					</article>
				</c:forEach>
			</div>
			<nav class="pagination is-rounded is-centered mb-6" role="navigation" aria-label="pagination">
				<c:if test="${curPage > page.pageCount }">
					<a href="${path1 }/notice/list.do?page=${page.blockStartNum - 1 }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-previous">Previous</a>
				</c:if>
				<c:if test="${page.blockLastNum < page.totalPageCount }">
					<a href="${path1 }/notice/list.do?page=${page.blockLastNum + 1 }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-next">Next page</a>
				</c:if>

				<ul class="pagination-list">
					<c:forEach var="i" begin="${page.blockStartNum }" end="${page.blockLastNum }">
						<c:choose>
							<c:when test="${i == curPage }">
								<li>
									<a href="${path1 }/notice/list.do?page=${i }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-link is-current" aria-label="Page ${i }" aria-current="page" >${i }</a>
								</li>
							</c:when>
							<c:otherwise>
								<li>
									<a href="${path1 }/notice/list.do?page=${i }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-link" aria-label="Page ${i }" aria-current="page">${i }</a>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</ul>
			</nav>
			<%-- <c:if test='${sid eq "admin"}'>  --%>
			<div class="button-group">
				<%--<a class="button is-info is-normal" href="${path1 }/free/insert.do">글쓰기</a>--%>
				<a class="button post-btn" href="${path1 }/notice/insert.do">글쓰기</a>
			</div>
			<%-- </c:if> --%>
		</div>
	</div>
</div>
<!-- 푸터 부분 인클루드 -->
<jsp:include page="../include/ft.jsp"></jsp:include>
</body>
</html>