
var currentProductId;

function findAll() {

    $.ajax({
        url: 'user/findAll',
        type: "POST",
        success: function (list) {

            $("#dataTable tr.datarow").remove();

            $.each(list, function (index,p) {
                //console.log(p);
                var str = "<tr id=tr" + p.users_ID + " class=\"datarow\">" +
                         "<td>" + p.users_ID + "</td>" +
                        "<td>" + p.users_Name + "</td>" +
                        "<td>" + p.users_pwd + "</td>" +
                        "<td>" + p.users_phoneNum + "</td>" +
                        "<td>" + p.e_mail + "</td>" +
                        "<td>"+
                         //+"<a href=\"javascript:popupEdit('"+p.users_ID+"');\">编辑</a></td><td><a href=\"javascript:delete_product('"+p.users_ID+"');\">删除</a></td></tr>";
                        "<a href=\"javascript:popupEdit('" + p.users_ID + "');\">编辑</a>&nbsp;&nbsp;" +
                        "<a href=\"javascript:delete_product('" +  p.users_ID + "');\">删除</a>" +
                        "</td></tr>";
//                       "<a href=\"javascript:popupEdit(" + p.users_ID + ");\">编辑</a>&nbsp;&nbsp;" +
                       
                       

                $("#dataTable").append(str);
            });
        },
        error: function (req, status, error) {
            alert("Ajax请求失败！" + error);
        }
    });
}

function popupEdit(uid) {
//    alert("asdsafd");

   currentProductId = uid;
    $.ajax({
        url: 'user/getuserbyid',
        type: 'POST',
        data: {uid:uid}, //发送一个请求参数，参数名为proId，参数值为传入的pid变量的值
        success: function (pro) {
            $("#inputId").val(pro.users_ID);
            $("#inputName").val(pro.users_Name);
            $("#inputpwd").val(pro.users_pwd);
            $("#inputphone").val(pro.users_phoneNum);
            $("#inputemail").val(pro.e_mail);
            $('#editModal').modal('show');
        },
        error: function (req, status, error) {
            alert("Ajax请求失败，错误：" + error);
        }
    });
}

function popupAdd() {
    $('#addModal').modal('show');
    $("#addForm")[0].reset();
}

//定义一个函数,根据编号删除产品
function delete_product(uid) {
    $.ajax({
        url: 'user/delete',
        type: 'POST',
        data: {uid: uid}, //发送一个请求参数，参数名为proId，参数值为传入的pid变量的值
        success: function () {
            //如果能执行到success，说明后台删除成功，这里同时将表格中对应的数据行删除
            $("#tr" + uid).remove(); // remove是删除当前元素和其内容
        },
        error: function (req, status, error) {
            alert("Ajax请求失败，错误：" + error);
        }
    });
}

$(document).ready(function () {

    $("#btnEdit").click(function () {
        $.ajax({
            url: 'user/edituser',
            type: 'POST',
            data: $("#editForm").serialize(),
            success: function () {
                $("#tr" + currentProductId).children().eq(1).html($("#inputName").val());
                $("#tr" + currentProductId).children().eq(2).html($("#inputpwd").val());
                $("#tr" + currentProductId).children().eq(3).html($("#inputphone").val());
                $("#tr" + currentProductId).children().eq(4).html($("#inputemail").val());
                $('#editModal').modal('hide');
            },
            error: function (req, status, error) {
                alert("Ajax请求失败，错误：" + error);
            }
        });
    });

    $("#btnAdd").click(function () {
        $.ajax({
            url: 'user/adduser',
            type: 'POST',
            data: $("#addForm").serialize(),
            success: function () {
               var p = {
                    users_ID: $("proid").val(),
                    users_Name: $("#proName").val(),
                    users_pwd: $("#proPrice").val(),
                    users_phoneNum: $("#proUnit").val(),
                    e_mail: $("#proStock").val()
                }; 

                var str = "<tr id=tr" + p.users_ID + " class=\"datarow\">" +
                        "<td>" + p.users_ID + "</td>" +
                        "<td>" + p.users_Name + "</td>" +
                        "<td>" + p.users_pwd + "</td>" +
                        "<td>" + p.users_phoneNum + "</td>" +
                        "<td>" + p.e_mail + "</td>" +
                        "<td>" +
                        "<a href=\"javascript:popupEdit(" + p.users_ID + ");\">编辑</a>&nbsp;&nbsp;" +
                        "<a href=\"javascript:delete_product(" + p.users_ID + ");\">删除</a>" +
                        "</td></tr>";        

                $("#dataTable").append(str);

                $("#addModal").modal("hide");
            },
            error: function (req, status, error) {
                 alert("Ajax请求失败，错误：" + error);
            }
        });
    });
});