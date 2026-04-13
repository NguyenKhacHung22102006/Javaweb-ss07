<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Tìm kiếm món ăn</title>
</head>
<body>

<h2>Tìm kiếm món ăn</h2>

<form action="#" method="get">
  <label>Nhóm món:</label><br>
  <select name="category">
    <option value="">-- Tất cả --</option>
    <c:forEach var="c" items="${categories}">
      <option value="${c}">${c}</option>
    </c:forEach>
  </select><br><br>

  <button type="submit">Tìm kiếm</button>
</form>

</body>
</html>