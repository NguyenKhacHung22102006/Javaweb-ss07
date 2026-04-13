<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Thêm món ăn</title>
</head>
<body>

<h2>Thêm món ăn</h2>

<form action="#" method="post">
    <label>Tên món:</label><br>
    <input type="text" name="name"/><br><br>

    <label>Nhóm món:</label><br>
    <select name="category">
        <option value="">-- Chọn nhóm món --</option>
        <c:forEach var="c" items="${categories}">
            <option value="${c}">${c}</option>
        </c:forEach>
    </select><br><br>

    <button type="submit">Thêm</button>
</form>

</body>
</html>