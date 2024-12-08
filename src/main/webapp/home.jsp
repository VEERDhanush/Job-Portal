<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professional Service Connect</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .navbar {
            background-color: #007bff;
        }
        .navbar-brand, .nav-link {
            color: #ffffff !important;
        }
        .nav-link:hover {
            color: #ffc107 !important;
        }
        .btn-outline-primary {
            border-color: #007bff;
            color: #007bff;
        }
        .btn-outline-primary:hover {
            background-color: #007bff;
            color: #ffffff;
        }
        .hero-section {
            background-color: #343a40;
            color: #ffffff;
            padding: 100px 0;
        }
        .card {
            border: none;
            background-color: #ffffff;
            transition: transform 0.2s;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .footer {
            background-color: #212529;
            color: #ffffff;
        }
        .footer a {
            color: #ffffff;
        }
        .footer a:hover {
            color: #ffc107;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand d-flex align-items-center" href="/">
                <span class="fw-bold">ProServices</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link px-3" href="/professionals">Find Professionals</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link px-3" href="/services">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link px-3" href="/about">About Us</a>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="loginDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fas fa-sign-in-alt me-1"></i> Login
                        </a>
                        <div class="dropdown-menu dropdown-large">
                            <h6 class="dropdown-header">Choose Login Type</h6>
                            <a class="dropdown-item py-2" href="/admin/alogin">
                                <i class="fas fa-user-shield me-2"></i> Admin Login
                            </a>
                            <a class="dropdown-item py-2" href="/professionals/login">
                                <i class="fas fa-briefcase me-2"></i> Professional Login
                            </a>
                            <a class="dropdown-item py-2" href="/users/login">
                                <i class="fas fa-user me-2"></i> User Login
                            </a>
                        </div>
                    </li>
                    <li class="nav-item dropdown ms-3">
                        <a class="nav-link dropdown-toggle" href="#" id="registerDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fas fa-user-plus me-1"></i> Register
                        </a>
                        <div class="dropdown-menu dropdown-large">
                            <h6 class="dropdown-header">Choose Registration Type</h6>
                            <a class="dropdown-item py-2" href="/professionals/register">
                                <i class="fas fa-briefcase me-2"></i> Register as Professional
                                <p class="small text-muted mb-0">⬤ Offer your services to clients</p>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item py-2" href="/users/register">
                                <i class="fas fa-user me-2"></i> Register as User
                                <p class="small text-muted mb-0">Find and hire professionals</p>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="hero-section text-center">
        <h1 class="display-4 fw-bold mb-4">Find Expert Professionals</h1>
        <p class="lead mb-4">Connect with verified professionals for all your service needs</p>
        <div class="d-flex justify-content-center gap-3">
            <form action="/search" method="get" class="d-flex w-50">
                <input type="text" name="query" class="form-control" placeholder="Search services or locations..." aria-label="Search">
                <button type="submit" class="btn btn-outline-primary ms-2">
                    <i class="fas fa-search"></i>
                </button>
            </form>
        </div>
    </div>

    <div class="container py-5">
        <h2 class="text-center mb-5">Popular Service Categories</h2>
        <div class="row g-4">
            <c:forEach var="category" items="${categories}">
                <div class="col-md-4">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body">
                            <h5 class="card-title">${category.name}</h5>
                            <p class="card-text text-muted">${category.description}</p>
                            <a href="/search?category=${category.id}" class="btn btn-outline-primary">Browse ${category.name}</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <div class="bg-light py-5">
        <div class="container">
            <h2 class="text-center mb-5">How It Works</h2>
            <div class="row g-4">
                <div class="col-md-3 text-center">
                    <div class="bg-white rounded-circle mx-auto mb-3 d-flex align-items-center justify-content-center" style="width: 80px; height: 80px;">
                        <i class="fas fa-search fa-2x text-primary"></i>
                    </div>
                    <h5>Search</h5>
                    <p class="text-muted">Find the right professional for your needs</p>
                </div>
                <div class="col-md-3 text-center">
                    <div class="bg-white rounded-circle mx-auto mb-3 d-flex align-items-center justify-content-center" style="width: 80px; height: 80px;">
                        <i class="fas fa-check-circle fa-2x text-primary"></i>
                    </div>
                    <h5>Select</h5>
                    <p class="text-muted">Choose from verified professionals</p>
                </div>
                <div class="col-md-3 text-center">
                    <div class="bg-white rounded-circle mx-auto mb-3 d-flex align-items-center justify-content-center" style="width: 80px; height: 80px;">
                        <i class="fas fa-calendar-check fa-2x text-primary"></i>
                    </div>
                    <h5>Book</h5>
                    <p class="text-muted">Schedule your service appointment</p>
                </div>
                <div class="col-md-3 text-center">
                    <div class="bg-white rounded-circle mx-auto mb-3 d-flex align-items-center justify-content-center" style="width: 80px; height: 80px;">
                        <i class="fas fa-star fa-2x text-primary"></i>
                    </div>
                    <h5>Review</h5>
                    <p class="text-muted">Share your experience</p>
                </div>
            </div>
        </div>
    </div>

    <div id="testimonialsCarousel" class="carousel slide py-5" data-bs-ride="carousel">
        <h2 class="text-center mb-5">What Our Users Say</h2>
        <div class="carousel-inner">
            <c:forEach var="testimonial" items="${testimonials}">
                <div class="carousel-item ${testimonial.id == 1 ? 'active' : ''}">
                    <div class="card border-0 shadow-sm mx-auto" style="max-width: 600px;">
                        <div class="card-body p-4">
                            <div class="mb-3">
                                <c:forEach begin="1" end="${testimonial.rating}">
                                    <i class="fas fa-star text-warning"></i>
                                </c:forEach>
                            </div>
                            <p class="card-text">${testimonial.feedback}</p>
                            <div class="d-flex align-items-center mt-3">
                                <img src="https://source.unsplash.com/50x50/?person,${testimonial.userTitle}" class="rounded-circle me-3" width="50" height="50" alt="${testimonial.userName}">
                                <div>
                                    <h6 class="mb-0">${testimonial.userName}</h6>
                                    <small class="text-muted">${testimonial.userTitle}</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <a class="carousel-control-prev" href="#testimonialsCarousel" role="button" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </a>
        <a class="carousel-control-next" href="#testimonialsCarousel" role="button" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </a>
    </div>

    <footer class="footer py-4">
        <div class="container text-center">
            <p>&copy; 2024 ProServices. All rights reserved.</p>
            <p>
                <a href="/terms">Terms & Conditions</a> |
                <a href="/privacy">Privacy Policy</a>
            </p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
