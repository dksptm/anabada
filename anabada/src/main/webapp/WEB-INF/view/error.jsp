<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!-- Single Page Header start -->
        <div class="container-fluid page-header py-5">
            <h1 class="text-center text-white display-6">${message }</h1>
            <ol class="breadcrumb justify-content-center mb-0">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                <li class="breadcrumb-item active text-white">${message }</li>
            </ol>
        </div>
        <!-- Single Page Header End -->


        <!-- 404 Start -->
        <div class="container-fluid py-5">
            <div class="container py-5 text-center">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <i class="bi bi-exclamation-triangle display-1 text-secondary"></i>
                        <h1 class="display-1">${message }</h1>
                        <h1 class="mb-4">Page Not Found</h1>
                        <p class="mb-4">에러페이지</p>
                        <a class="btn border-secondary rounded-pill py-3 px-5" href="index.jsp">Go Back To Home</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- 404 End -->


