<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Spring Boot Sample</title>
</head>

<body>

<tr>
    <td class="tableleft">标题</td>
    <td>
        <input name="title" type="text" id="title" style="width:150px;vertical-align:middle;"      maxlength="40"  >
        <lable>文件名</lable>
        <input name="filename" type="text" id="filename" style="width:150px;vertical-align:middle;" maxlength="40" >
        <lable>时间</lable>
        <input name="time" type="text" id="time" style="width:150px;vertical-align:middle;" maxlength="40" onClick="WdatePicker()">
        <lable>内容简介</lable>
        <input name="content"  type="text" id="content" style="width:300px;vertical-align:middle;" maxlength="50"  >
        <input type="button"   class="btn btn-success"  value="增加" id="addTable" onclick="add_tr(this)"/>
        <input type="button"  class="btn btn-success"   value="删除" id="deleteTable"/>
    </td>
</tr>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script>
    function add_tr(obj) {
        var tr = $(obj).parent().parent();
        tr.after(tr.clone());
    }
</script>



<h1>${content }</h1>
</body>
</html>