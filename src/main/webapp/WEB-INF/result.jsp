<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Kết quả</title>
</head>
<body>

<h2>Kết quả sau khi submit</h2>

<p>Tên: ${student.name}</p>
<p>Phone: ${student.phone}</p>
<p>Active: ${student.active}</p>

<a href="${pageContext.request.contextPath}/student">Quay lại</a>

</body>
</html>