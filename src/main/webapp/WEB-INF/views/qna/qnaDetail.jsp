<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>묻고 답하기</title>
	<!-- 헤드 부분 인클루드 -->
	<jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<header id="header">
	<!-- 헤더 부분 인클루드 -->
	<jsp:include page="../include/hd.jsp"></jsp:include>
</header>
<div class="container is-fullhd">
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
			</div>

			<div class="card article">
				<div class="card-content">
					<div class="media">
						<div class="media-content has-text-centered">
							<h1 class="title article-title">${dto.title }</h1>
							<h6 class="subtitle is-6 article-subtitle">
								${dto.name } | ${dto.resdate } | 조회수:${dto.visit }
							</h6>
						</div>
					</div>
					<hr>

					<div class="content article-body">
						<p style="padding: 20px 100px; min-height: 100px; font-size: 18px;">
							${dto.content }
						</p>
					</div>
				</div>

				<%--					<div class="columns">--%>
				<%--						<div class="column is-5"></div>--%>
				<%--						<div class="column is-2">--%>
				<%--							<a class="button is-fullwidth post-btn" href="${path1 }/notice/edit.do?nno=${dto.nno}">추천</a>--%>
				<%--						</div>--%>
				<%--						<div class="column is-5"></div>--%>
				<%--					</div>--%>

				<div class="columns">
					<div class="column is-3"></div>
					<div class="column is-2">
						<a class="button is-fullwidth is-info" href="${path1 }/qna/list.do">글 목록</a>
					</div>
					<%-- <c:if test='${sid eq "admin"}'>  --%>
					<div class="column is-2">
						<a class="button is-fullwidth is-primary" href="${path1 }/qna/edit.do?qno=${dto.qno}&lev=${dto.lev }">글 수정</a>
					</div>
					<div class="column is-2">
						<a class="button is-fullwidth is-danger" href="${path1 }/qna/delete.do?qno=${dto.qno}&lev=${dto.lev }">글 삭제</a>
					</div>
					<c:if test='${dto.lev == 0}'>
						<div class="column is-2">
							<a class="button is-fullwidth submission" href="${path1 }/qna/insert.do?lev=1&par=${dto.qno}" style="background-color: #2B3A55; color: #ffffff">답변하기</a>
						</div>
					</c:if>
					<%-- </c:if> --%>
					<div class="column is-3"></div>
				</div>
			</div>

			<div class="cmtwrap">
				<form action="/" method="post" class="columns mt-5">
					<div class="column is-10">
						<textarea class="textarea" name="content" id="content" placeholder="댓글을 입력해주세요." rows="2" cols="30" maxlength="800" required></textarea>
					</div>
					<div class="column is-2">
						<button type="submit" class="button is-fullwidth submission">등록</button>
					</div>
				</form>
			</div>
			<article class="media">
				<figure class="media-left">
					<div class="image is-64x64" style="border-radius: 50%; background-color: #2B3A55; color: #ffffff; ">
						<p style=" color: #ffffff; text-align: center; padding: 20px 0px;">
							${dto.name }
						</p>
					</div>
				</figure>
				<div class="media-content">
					<div class="content">
						<p>
							<strong>${dto.name }</strong> <small>${dto.author }</small> <small>${dto.resdate }</small>
							<br>
							${dto.content }
						</p>
					</div>
					<%--					<nav class="level is-mobile">--%>
					<%--						<div class="level-left">--%>
					<%--							<a class="level-item">--%>
					<%--								<span class="icon is-small"><i class="fas fa-reply"></i></span>--%>
					<%--							</a>--%>
					<%--							<a class="level-item">--%>
					<%--								<span class="icon is-small"><i class="fas fa-retweet"></i></span>--%>
					<%--							</a>--%>
					<%--							<a class="level-item">--%>
					<%--								<span class="icon is-small"><i class="fas fa-heart"></i></span>--%>
					<%--							</a>--%>
					<%--						</div>--%>
					<%--					</nav>--%>
				</div>
				<div class="media-right">
					<button class="delete" style="background-color: #2B3A55"></button>
				</div>
			</article>


		</div>
	</div>
</div>
<footer id="footer" class="footer-nav row expanded collapse">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../include/ft.jsp"></jsp:include>
</footer>
</body>
</html>