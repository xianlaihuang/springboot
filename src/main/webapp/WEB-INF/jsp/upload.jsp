<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>file upload</title>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/jquery-1.12.4.min.js"></script>--%>
    <%-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/jquery.ajaxfileupload.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/ajaxfileupload.js"></script> --%>
</head>
<body>

<div id="uploadForm">
    <input id="file" type="file" name="file"/>
    <button id="upload" type="button" onclick="fileUpload()">upload</button>
</div>



<script type="text/javascript">

    function fileUpload(){

        var formData = new FormData();
        //formData.append('file', document.getElementById('file').files[0]);
        formData.append('file', $('#file')[0].files[0]);
        $.ajax({
            url: 'fileUpload',
            type: 'POST',
            cache: false,
            data: formData,
            processData: false,
            contentType: false
        }).done(function(res) {
        }).fail(function(res) {});
    }

</script>
</body>
</html>