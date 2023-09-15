<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />

<!-- 헤더 내용 기술 -->
<div class="hero-head">
    <div class="first_nav">
        <div class="container">
            <nav class="navbar">
                <div class="navbar-brand">
                    <a class="navbar-item" href="http://aldi.github.io/awesome-bulma-templates">
                        <img src="https://bulma.io/images/bulma-logo.png" alt="Bulma Hotel" width="112" height="28" />
                    </a>
                    <a class="navbar-item is-hidden-desktop" href="tel:+302109849583">
                  <span class="icon" style="color: #333;">
                    <i class="fa fa-lg fa-phone-alt"></i>
                  </span>
                    </a>
                    <a class="navbar-item is-hidden-desktop" href="mailto:reservations@bulmahotels.com">
                  <span class="icon" style="color: #333;">
                    <i class="fa fa-lg fa-envelope"></i>
                  </span>
                    </a>
                    <a class="navbar-item is-hidden-desktop" href="#" target="_blank">
                  <span class="icon">
                    <i class="fab fa-lg fa-facebook-f"></i>
                  </span>
                    </a>
                    <!-- Mobile Menu -->
                    <div class="navbar-burger burger" data-target="navMenuBlogHero">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </div>
                <!-- Menu -->
                <div id="navMenuBlogHero" class="navbar-menu">
                    <!-- Left Nav -->
                    <div class="navbar-start">
                        <!-- 메인 페이지로 이동하는 링크 추가 -->
                        <a class="navbar-item is-active" href="${path1}/main">Home</a>
                        <a class="navbar-item">
                            Documentation
                        </a>

                        <div class="navbar-item has-dropdown is-hoverable">
                            <a class="navbar-link">
                                Community
                            </a>

                            <div class="navbar-dropdown">
                                <a href="${path1 }/board/list.do" class="navbar-item">
                                    Board
                                </a>
                                <a href="${path1 }/sample2/list.do" class="navbar-item">
                                    Sample
                                </a>
                                <a class="navbar-item">
                                    Contact
                                </a>
                                <hr class="navbar-divider">
                                <a class="navbar-item">
                                    Report an issue
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- ./Left Nav -->
                    <!-- Right Nav -->
                    <div class="navbar-end">
                        <div class="navbar-item">
                            <div class="field is-grouped">
                                <p class="control">
                                    <a class="button is-normal is-facebook">
                                        <span class="icon">
                                            <i class="fab fa-facebook-f"></i>
                                        </span>
                                        <span>Facebook</span>
                                    </a>
                                </p>
                                <p class="control">
                                    <a class="button is-normal is-success" href="tel:+302109999999">
                                        <span class="icon">
                                            <i class="fa fa-phone-alt"></i>
                                        </span>
                                        <span>Call Us</span>
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>
