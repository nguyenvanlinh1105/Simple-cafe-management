  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <!-- Navigation -->
 <div class="container-fluid p-0 nav-bar" style="
    width: 100%;
    color: #fff;
    position: fixed;
    background: #000;">
        <nav class="navbar navbar-expand-lg bg-none navbar-dark py-3">
            <a href="index.html" class="navbar-brand px-lg-4 m-0">
                <h1 class="m-0 display-4 text-uppercase text-white">KOPEMI</h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                <div class="navbar-nav ml-auto p-4">
                    <a href="index.html" class="nav-item nav-link active">Trang chủ</a>
                    <a href="about.html" class="nav-item nav-link">Giới thiệu chung</a>
                    <a href="service.html" class="nav-item nav-link">Dịch vụ</a>
                    <a href="<c:url value='/DatDoUong'/>"  class="nav-item nav-link">Menu</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Trang dịch vụ</a>
                        <div class="dropdown-menu text-capitalize">
                            <a href="<c:url value='/DatDoUong'/>"class="dropdown-item">Đặt bàn</a>
                            <a href="<c:url value='/DoUongDaDat'/>" class="dropdown-item">Danh sách món đã chọn</a>
                        </div>
                    </div>
                    <a href="contact.html" class="nav-item nav-link">Liên hệ</a>
                </div>
            </div>
        </nav>
    </div>