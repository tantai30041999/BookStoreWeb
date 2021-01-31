<%@ page import="Util.Util" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP-Servlet Upload file</title>
</head>
<body>
<h2>Demo JSP-Servlet Upload File</h2>
<form method="post" enctype="multipart/form-data" action=<%=Util.fullPath("UploadFile")%> >
    <input id="temp" type="hidden" name="nameFile" >

    Select file to upload: <input id="file" type="file" name="file" size="60" />
    <br>
    <br>
    <input type="submit" value="Upload" />
</form>
<button onclick="getValue()">Xác nhận chọn file</button>
<script>
    function getValue() {
        var nameOfFile = document.getElementById("file").value;
        var flag = document.getElementById("temp");
        flag.value = nameOfFile;
    }
</script>
</body>
