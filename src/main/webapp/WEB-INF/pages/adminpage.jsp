<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.tiny.cloud/1/5visbkrzsmef4spvcdb2hatgn4e60j4uxqoh6hqabnbihb9x/tinymce/5/tinymce.min.js"
            referrerpolicy="origin"></script>
</head>
<body>
<p>Admin page</p>
<c:url value="/" var="link1"/>
<a href="${link1}">Вернуться на главную страницу</a>
<p></p>
<p></p>
<c:if test="${noImage == '1'}">
    <p style="color: red">Вы отправили не изображение повторите отправку</p>
</c:if>
<c:url value="/admin/add" var="form"/>
<form action="${form}" method="post">
    <label for="postAuthor">Введите имя и фамилию автора поста<br/>
        <input id="postAuthor" name="postAuthor" size="70"/>
    </label>
    <p></p>
    <label for="postName">Введите название поста :<br/>
        <input id="postName" name="postName" size="70"/>
    </label>
    <p></p>
    <label for="publicationDate">Введите дату публикации (по умолчанию будет установленна текущая дата) :<br/>
        <input id="publicationDate" name="publicationDate" size="70"/>
    </label>
    <p></p>
    <label for="postTheme">Введите зоголовок поста :<br/>
        <textarea id="postTheme" name="postTheme" cols="100" rows="10"></textarea>
    </label>
    <p></p>
    <br/>
    <div style="color: #1c7430">${msg}</div>
    <div style="color: red">${msg1}</div>
    <label for="postBody">Введите пост :<br/>
        <textarea id="postBody" name="postBody" cols="100" rows="18"></textarea>
    </label>
    <p></p>
    <label>Черновик ?
        &nbsp; Да<input type="radio" name="draft" value="yes" checked>
        &nbsp; Нет<input type="radio" name="draft" value="no">
    </label>
    <p></p>
    <input type="submit"/>
</form>
<script>
    tinymce.init({
        selector: '#postTheme',
        plugins: 'a11ychecker advcode casechange formatpainter linkchecker autolink lists checklist media mediaembed pageembed permanentpen powerpaste table advtable tinycomments tinymcespellchecker',
        toolbar: 'a11ycheck addcomment showcomments casechange checklist code formatpainter pageembed permanentpen table',
        toolbar_mode: 'floating',
        tinycomments_mode: 'embedded',
        tinycomments_author: 'Author name',
    });
    tinymce.init({
        selector: '#post',
        plugins: 'a11ychecker advcode casechange formatpainter linkchecker autolink lists checklist media mediaembed pageembed permanentpen powerpaste table advtable tinycomments tinymcespellchecker',
        toolbar: 'a11ycheck addcomment showcomments casechange checklist code formatpainter pageembed permanentpen table',
        toolbar_mode: 'floating',
        tinycomments_mode: 'embedded',
        tinycomments_author: 'Author name',
    });
</script>
</body>
</html>
