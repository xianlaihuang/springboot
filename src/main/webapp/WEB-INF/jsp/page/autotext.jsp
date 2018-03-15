<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="refresh" content="5">
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
        /*var tr = $(obj).parent().parent();
        tr.after(tr.clone());*/
        var test1 = new Object();
        test1.name="huangxl";
        test1.array1= new Array();

        var test2 = new Object();
        test2.name="huangxl2";
        test2.array2=new Array();

        var test3 = new Object();
        test3.name = "huangxl3";
        test3.array3=new Array();


        var test22 = new Object();
        test22.name="huangxl22";
        test22.value="x22";

        var test21 = new Object();
        test21.name="huangxl21";
        test21.value="x21";

        test2.array2.push(test21);
        test2.array2.push(test22);

        var test = new Object();
        test.name="xuhui";
        test.arraytest=new Array();
        test.arraytest.push(test1);
        test.arraytest.push(test2);
        test.arraytest.push(test3);

        var arrayu=[test];

        $.ajax({
            async:"false",
            type:'post',
            url:'page/page6',
            data:{name:"123",conditions:JSON.stringify(arrayu)},
            dataType : 'json',
            success:function(data){
                console.log(data);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown){
                alert("error");
            }
        });



    }
</script>




</body>
</html>