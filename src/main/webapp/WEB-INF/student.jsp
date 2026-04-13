<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Student Form</title>
</head>
<body>

<h2>Form nhập thông tin</h2>

<form action="${pageContext.request.contextPath}/student/save" method="post">

    <label>Tên:</label>
    <input type="text" name="name" />
    <br><br>

    <label>Số điện thoại:</label>
    <input type="text" name="phone" />
    <br><br>

    <label>Đang hoạt động:</label>
    <input type="checkbox" name="active" value="true" />
    <br><br>

    <button type="submit">Gửi</button>

</form>

</body>
</html>