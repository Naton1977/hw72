<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Blog Home - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" var="css1"/>
    <link href="${css1}" rel="stylesheet">

    <!-- Custom styles for this template -->
    <c:url value="/resources/css/blog-post.css" var="css2"/>
    <link href="${css2}" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <c:url value="/" var="home"/>
                    <a class="nav-link" href="${home}">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
                <li class="nav-item">
                    <c:url value="/admin/add" var="admin"/>
                    <a class="nav-link" href="${admin}">Admin Login</a>
                </li>

            </ul>
        </div>
    </div>
</nav>

<!-- Page Content -->
<div class="container">

    <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">

            <h1 class="my-4">Page Heading
                <small>Secondary Text</small>
            </h1>

            <!-- Blog Post -->
            <c:if test="${id1 != null}">
                <div class="card mb-4">
                    <img class="card-img-top" src="http://placehold.it/750x300" alt="#">
                    <div class="card-body">
                        <h2 class="card-title">${postName1}</h2>
                        <p class="card-text">${postTheme1}</p>
                        <c:url value="/post/${id1}" var="link1"/>
                        <a href="${link1}" class="btn btn-primary">Read More &rarr;</a>
                    </div>
                    <div class="card-footer text-muted">
                        Posted ${publicationDate1} by
                        <a href="#">${postAuthor1}</a>
                    </div>
                </div>
            </c:if>

            <!-- Blog Post -->
            <c:if test="${id2 != null}">
                <div class="card mb-4">
                    <img class="card-img-top" src="http://placehold.it/750x300" alt="#">
                    <div class="card-body">
                        <h2 class="card-title">${postName2}</h2>
                        <p class="card-text">${postTheme2}</p>
                        <c:url value="/post/${id2}" var="link2"/>
                        <a href="${link2}" class="btn btn-primary">Read More &rarr;</a>
                    </div>
                    <div class="card-footer text-muted">
                        Posted on ${publicationDate2} by
                        <a href="#">${postAuthor2}</a>
                    </div>
                </div>
            </c:if>

            <!-- Blog Post -->
            <c:if test="${id3 != null}">
                <div class="card mb-4">
                    <img class="card-img-top" src="http://placehold.it/750x300" alt="#">
                    <div class="card-body">
                        <h2 class="card-title">${postName3}</h2>
                        <p class="card-text">${postTheme3}</p>
                        <c:url value="/post/${id3}" var="link3"/>
                        <a href="${link3}" class="btn btn-primary">Read More &rarr;</a>
                    </div>
                    <div class="card-footer text-muted">
                        Posted on ${publicationDate3} by
                        <a href="#">${postAuthor3}</a>
                    </div>
                </div>
            </c:if>

            <!-- Pagination -->
            <ul class="pagination justify-content-center mb-4">
                <c:choose>
                <c:when test="${startPosition == 0}">
                <li class="page-item disabled">
                    </c:when>
                    <c:when test="${startPosition > 0}">
                <li class="page-item">
                    </c:when>
                    </c:choose>

                    <c:url value="/" var="postOlder">
                        <c:param name="postOlder" value="${postPosition}"/>
                    </c:url>
                    <a class="page-link" href="${postOlder}">&larr; Older</a>
                </li>

                <c:choose>
                <c:when test="${postPosition < countLines}">
                <li class="page-item">
                    </c:when>
                    <c:when test="${postPosition == 0}">
                <li class="page-item disabled">
                    </c:when>
                    <c:when test="${postPosition == countLines}">
                <li class="page-item disabled">
                    </c:when>
                    <c:when test="${countLines < 4}">
                <li class="page-item disabled">
                    </c:when>

                    </c:choose>


                    <c:url value="/" var="postNewer">
                        <c:param name="postNewer" value="${postPosition}"/>
                    </c:url>
                    <a class="page-link" href="${postNewer}">Newer &rarr;</a>
                </li>
            </ul>
        </div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

            <!-- Search Widget -->
            <div class="card my-4">
                <h5 class="card-header">Search</h5>
                <div class="card-body">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for...">
                        <span class="input-group-append">
                <button class="btn btn-secondary" type="button">Go!</button>
              </span>
                    </div>
                </div>
            </div>

            <!-- Categories Widget -->
            <div class="card my-4">
                <h5 class="card-header">Categories</h5>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="list-unstyled mb-0">
                                <li>
                                    <a href="#">Web Design</a>
                                </li>
                                <li>
                                    <a href="#">HTML</a>
                                </li>
                                <li>
                                    <a href="#">Freebies</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul class="list-unstyled mb-0">
                                <li>
                                    <a href="#">JavaScript</a>
                                </li>
                                <li>
                                    <a href="#">CSS</a>
                                </li>
                                <li>
                                    <a href="#">Tutorials</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Side Widget -->
            <div class="card my-4">
                <h5 class="card-header">Side Widget</h5>
                <div class="card-body">
                    You can put anything you want inside of these side widgets. They are easy to use, and feature the
                    new Bootstrap 4 card containers!
                </div>
            </div>

        </div>

    </div>
    <!-- /.row -->

</div>
<!-- /.container -->

<!-- Footer -->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<c:url value="/resources/vendor/jquery/jquery.min.js" var="js1"/>
<script src="${js1}"></script>
<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" var="js2"/>
<script src="${js2}"></script>

</body>

</html>
