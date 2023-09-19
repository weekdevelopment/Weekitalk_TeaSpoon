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
	</style>
</head>
<body>
<!-- 헤더 부분 인클루드 -->
<jsp:include page="../include/hd.jsp"></jsp:include>
<div class="container is-fullhd">
<%--	<div class="content" id="content">--%>
<%--	    <div class="row column text-center">--%>
<%--	      <h2 class="h1">묻고 답하기</h2>--%>
<%--	      <hr>--%>
<%--	      <div class="container">--%>

<%--				<section class="main-content columns is-fullheight">--%>

<%--					<aside class="column is-2 is-narrow-mobile is-fullheight section is-hidden-mobile">--%>
<%--						<p class="menu-label is-hidden-touch">고객센터</p>--%>
<%--						<ul class="menu-list">--%>
<%--							<li>--%>
<%--								<a href="${path1 }/notice/list.do" class="">--%>
<%--									<span class="icon" ><i class="fa fa-solid fa-bell"></i></span>공지사항--%>
<%--								</a>--%>
<%--							</li>--%>
<%--							<li>--%>
<%--								<a href="${path1 }/qna/list.do" class="is-active" style="background-color: #2B3A55;">--%>
<%--									<span class="icon" style="color: #FFFFFF"><i class="fa fa-solid fa-question"></i></span>묻고 답하기--%>
<%--								</a>--%>
<%--&lt;%&ndash;								<ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;									<li>&ndash;%&gt;--%>
<%--&lt;%&ndash;										<a href="#">&ndash;%&gt;--%>
<%--&lt;%&ndash;											<span class="icon is-small"><i class="fa fa-window-maximize"></i></span> Link1&ndash;%&gt;--%>
<%--&lt;%&ndash;										</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;									</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;									<li>&ndash;%&gt;--%>
<%--&lt;%&ndash;										<a href="#">&ndash;%&gt;--%>
<%--&lt;%&ndash;											<span class="icon is-small"><i class="fa fa-link"></i></span> Link2&ndash;%&gt;--%>
<%--&lt;%&ndash;										</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;									</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;								</ul>&ndash;%&gt;--%>
<%--							</li>--%>
<%--							<li>--%>
<%--								<a href="${path1 }/faq/list.do" class="">--%>
<%--									<span class="icon"><i class="fa fa-window-maximize"></i></span>자주 묻는 질문--%>
<%--								</a>--%>
<%--							</li>--%>
<%--						</ul>--%>
<%--					</aside>--%>

<%--					<div class="container column is-10">--%>
<%--						<div class="section">--%>
<%--							<c:forEach items="${qnaList }" var="qna" varStatus="status">--%>
<%--								<c:set var="prevPar" value="${status.index == 0 ? -1 : qnaList[status.index - 1].par}" />--%>
<%--								<a href="${path1}/qna/detail.do?qno=${qna.qno }&lev=${qna.lev }">--%>
<%--									<c:if test="${qna.par != prevPar}">--%>
<%--										<br/>--%>
<%--									</c:if>--%>
<%--								<div class="card">--%>
<%--									<div class="card-content">--%>
<%--										<fmt:parseDate value="${qna.resdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />--%>
<%--										<div class="content">--%>
<%--											 <c:if test='${qna.lev == 0 }'>--%>
<%--												 <span style="font-weight:bold;">${qna.title }</span>--%>
<%--											 </c:if>--%>
<%--											 <c:if test='${qna.lev == 1 }'>--%>
<%--												 <span style="font-weight:bold;">--%>
<%--													 <img src="${path1 }/WEB-INF/views/qna/image/icon_reply.png" alt="[답변]">${qna.title }</span>--%>
<%--											 </c:if>--%>
<%--												<br>--%>
<%--												<span>조회수</span><span style="color:#CE7777 "> ${qna.visit }</span>--%>
<%--												<span style="float:right;"><fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" /> </span>--%>
<%--										</div>--%>
<%--									</div>--%>
<%--								</div>--%>
<%--								</a>--%>



<%--							</c:forEach>--%>
<%--							<br />--%>
<%--						</div>--%>
<%--					</div>--%>

<%--				</section>--%>
<%--				 <c:if test='${!empty sid}'>--%>

<%--				<div class="button-group">--%>
<%--					<a class="button" href="${path1 }/qna/insert.do?lev=0&par=0">질문</a>--%>
<%--				</div>--%>
<%--				 </c:if>--%>
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
			<div class="conwrap">
				<div class="box">
					<%--<h6>자유게시판</h6>--%>
					<span class="title">묻고 답하기</span>
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
								<p class="card-header-title">답변 많은 글</p>
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
				<c:forEach items="${qnaList }" var="qna" varStatus="status">
					<c:set var="prevPar" value="${status.index == 0 ? -1 : qnaList[status.index - 1].par}" />
						<c:if test="${qna.par != prevPar}">
							<br/>
						</c:if>
					<div class="card">
						<div class="card-content">
							<fmt:parseDate value="${qna.resdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
							<div class="content">
								<a href="${path1}/qna/detail.do?qno=${qna.qno }&lev=${qna.lev }">
								<c:if test='${qna.lev == 0 }'>
									 <h4 style="font-size: 1.19em;">${qna.title }</h4>
								 </c:if>
								 <c:if test='${qna.lev == 1 }'>
									 <h4 style="font-size: 1.19em;"><img src="${path1 }/resources/img/icon_reply.png" alt="[답변]"> ${qna.title }</h4>
								 </c:if>
								</a>
								<div class="media">
									<div class="media-content">
										<div class="content">
												<%--<p>
                                                    <a href="#">@jsmith</a> replied 34 minutes ago &nbsp;
                                                    <span class="tag">Question</span>
                                                </p>--%>
											<p>
												조회수
												<span>${qna.visit }</span>
											</p>
										</div>
									</div>
									<div class="media-right">
											<%--								<span class="has-text-grey-light"><i class="fa fa-comments"></i> 1</span>--%>
										<fmt:parseDate value="${qna.resdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
										<span style="float:right; font-weight: bold;"><fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" /> </span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<c:if test='${!empty sid}'>
				<div class="button-group">
					<a class="button post-btn" href="${path1 }/qna/insert.do?lev=0&par=0">질문</a>
				</div>
			</c:if>
		</div>
	</div>

</div>
<!-- 푸터 부분 인클루드 -->
<jsp:include page="../include/ft.jsp"></jsp:include>
</body>
</html>