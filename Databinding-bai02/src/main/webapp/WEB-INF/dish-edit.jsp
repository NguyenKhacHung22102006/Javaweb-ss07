<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Sửa món ăn</title>
</head>
<body>

<h2>Sửa món ăn</h2>

<form action="#" method="post">
  <label>Tên món:</label><br>
  <input type="text" name="name" value="${dish.name}"/><br><br>

  <label>Nhóm món:</label><br>
  <select name="category">
    <c:forEach var="c" items="${categories}">
      <option value="${c}"
              <c:if test="${c == dish.category}">selected</c:if>>
          ${c}
      </option>
    </c:forEach>
  </select><br><br>

  <button type="submit">Cập nhật</button>
</form>

</body>
</html>