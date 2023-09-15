<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="/Weekitalk_war" />
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="./include/head.jsp"/>
</head>
<body>
<section class="hero main_hero is-fullheight">
    <jsp:include page="./include/hd.jsp" />

    <div class="hero-body">
        <div class="container has-text-centered">
            <div class="slider-content animated zoomIn pb-6">
                <div>
                    <p class="title is-1 main-text">Welcome to Weekitalk</p>
                    <p class="subtitle is-4 main-text">Experience The Our Community</p>
                </div>
            </div>
            <span class="scroll-down animated zoomIn">
            <svg
                    width="30px"
                    height="100%"
                    viewBox="0 0 247 390"
                    version="1.1"
                    xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink"
                    style="
                fill-rule: evenodd;
                clip-rule: evenodd;
                stroke-linecap: round;
                stroke-linejoin: round;
                stroke-miterlimit: 1.5;
              " href="${path1}/board/list.do"
            >
              <path id="wheel" d="M123.359,79.775l0,72.843" style="fill: none; stroke: #fff; stroke-width: 20px;" />
              <path
                      id="mouse"
                      d="M236.717,123.359c0,-62.565 -50.794,-113.359 -113.358,-113.359c-62.565,0 -113.359,50.794 -113.359,113.359l0,143.237c0,62.565 50.794,113.359 113.359,113.359c62.564,0 113.358,-50.794 113.358,-113.359l0,-143.237Z"
                      style="fill: none; stroke: #fff; stroke-width: 20px;"
              />
            </svg>
          </span>
        </div>
    </div>
</section>
<%--
<!-- Rooms Section -->
<jsp:include page="./content/room.jsp" />
<!-- ./Rooms Section -->

<!-- Features Modal -->
<jsp:include page="./content/Features_Modal.jsp" />
<!-- ./Features Modal -->

<!-- About Section -->
<jsp:include page="./content/about.jsp" />
<!-- ./About Section -->

<!-- Gallery Section -->
<jsp:include page="./content/gallery.jsp" />
<!-- ./Gallery Section -->

<!-- Contact Us Section -->
<jsp:include page="./content/contact.jsp" />
<!-- ./Contact Us Section -->

<!-- Footer Section -->
<jsp:include page="./include/ft.jsp" />
<!-- end to Footer Section --> --%>
</body>
</html>
