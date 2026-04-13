<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Thêm món ăn</title>
</head>
<body>

<h2>Thêm món ăn</h2>

<c:if test="${error != null}">
    <p style="color:red">${error}</p>
</c:if>

<c:if test="${success != null}">
    <p style="color:green">${success}</p>
</c:if>

<form action="/food/add" method="post" enctype="multipart/form-data">

    Tên món:<br>
    <input type="text" name="name"><br><br>

    Danh mục:<br>
    <select name="category">
        <c:forEach var="c" items="${categories}">
            <option value="${c}">${c}</option>
        </c:forEach>
    </select><br><br>

    Giá:<br>
    <input type="number" name="price"><br><br>

    Ảnh:<br>
    <input type="file" name="image"><br><br>

    <button type="submit">Thêm</button>

</form>

</body>
</html>