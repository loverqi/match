<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/23 0023
  Time: 下午 3:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>供应链金融信息共享平台</title>
    <link rel="stylesheet" href="/static/js/jquery-ui-1.10.3.custom/css/custom-theme/jquery-ui-1.10.3.custom.min.css">
    <link rel="stylesheet" href="/static/js/bootstrap-daterangepicker/daterangepicker-bs3.css">
    <link rel="stylesheet" href="/static/js/jqgrid/css/ui.jqgrid.min.css">
    <link rel="stylesheet" href="/static/css/bootstrap-table.css">
    <%--用户新增--%>
    <link rel="stylesheet" type="text/css" href="/static/css/cloud-admin.css" >
    <link rel="stylesheet" type="text/css" href="/static/css/font-awesome/css/font-awesome.min.css">
    <style>
        .form-horizontal{
            margin-left: 80px;
        }
        .control-label{
            width: 108px;
            display: block;
        }
        .col-sm-2.col-xs-2{
            padding-left: 0;
        }
        .clearfix{
            clear: both;
        }
        .floatLeft{
            float: left;
        }
        .redStart{
            color: red;
            margin-right:2px;
        }
    </style>
</head>
<body>
<div>
    <form class="form-horizontal" role="form">
        <div class="form-group">
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>借款人名称</label>
            <div class="col-sm-2 col-xs-2">
                <input class="form-control input-sm" type="text" placeholder="" id="borrowerName">
            </div>
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>合作协议号</label>
            <div class="col-sm-2 col-xs-2">
                <input class="form-control input-sm" type="text" placeholder="" id="cooNum">
            </div>
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>监管机构</label>
            <div class="col-sm-2 col-xs-2">
                <select class="form-control input-sm" id="superDep">
                    <option value="">全部</option>
                    <option value="">日照大宗商品交易中心</option>
                </select>
            </div>
        </div>
        <div class="parate"></div>
        <div class="form-group">
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>业务到期时间</label>
            <div class="col-sm-2 col-xs-2">
                <input  class="form-control datepicker input-sm" type="text" name="regular" size="10" id="deadLine">
            </div>
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>贷款种类</label>
            <div class="col-sm-2 col-xs-2" style="position: relative;">
                <input class="form-control input-sm" type="text" placeholder="请选择贷款种类" id="morClassifyInput" disabled="disabled">
                <img src="/static/images/btnselect.png"  id="morClassifyBtn" style="cursor: pointer;position: relative;top:-25px;left: 112px;" class="floatLeft">
            </div>
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>材质</label>
            <div class="col-sm-2 col-xs-2">
                <input class="form-control input-sm" type="text" placeholder="" id="material">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>融资金额</label>
            <div class="col-sm-2 col-xs-2">
                <input  class="form-control input-sm" type="text" name="morValue" size="10" id="morValue">
            </div>
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>放款时间 </label>
            <div class="col-sm-2 col-xs-2">
                <input class="form-control input-sm datepicker" type="text" placeholder="" id="morTime">
            </div>
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>质押率</label>
            <div class="col-sm-2 col-xs-2">
                <input class="form-control input-sm" type="text" placeholder="" id="mortageRate">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>规格型号</label>
            <div class="col-sm-2 col-xs-2">
                <input class="form-control input-sm" type="text" placeholder="" id="specType">
            </div>
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>计量单位</label>
            <div class="col-sm-2 col-xs-2">
                <input class="form-control input-sm" type="text" placeholder="" id="measureUnit">
            </div>
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>数量</label>
            <div class="col-sm-2 col-xs-2">
                <input class="form-control input-sm" type="text" placeholder="" id="count">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>质物价值</label>
            <div class="col-sm-2 col-xs-2">
                <input class="form-control input-sm" type="text" placeholder="" id="totalValue">
            </div>
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>质物名称</label>
            <div class="col-sm-2 col-xs-2">
                <input class="form-control input-sm" type="text" placeholder="" id="mortgageName">
            </div>
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>价格单位</label>
            <div class="col-sm-2 col-xs-2">
                <input class="form-control input-sm" type="text" placeholder="" id="priceUnit">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>生产厂家</label>
            <div class="col-sm-2 col-xs-2">
                <input class="form-control input-sm" type="text" placeholder="" id="producer">
            </div>
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>单位价格</label>
            <div class="col-sm-2 col-xs-2">
                <input class="form-control input-sm" type="text" placeholder="" id="unitPrice">
            </div>
            <div >
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>市场</label>
            <div class="col-sm-2 col-xs-2">
                <input class="form-control input-sm" type="text" placeholder="" id="marketCity">
            </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>借款人用信风险敞口</label>
            <div class="col-sm-2 col-xs-2">
                <input class="form-control input-sm" type="text" placeholder="" id="riskExposure">
            </div>
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>融资合同编号</label>
            <div class="col-sm-2 col-xs-2">
                <input class="form-control input-sm" type="text" placeholder="" id="businessConum">
            </div>
            <label class="col-sm-1 control-label col-xs-1">复核岗</label>
            <div class="col-sm-2 col-xs-2" style="position: relative">
                <input class="form-control input-sm" type="text" placeholder="请选择复核岗人员" id="checker" disabled="disabled">
                <img src="/static/images/btnselect.png"  id="checkerBtn" style="cursor: pointer;position: relative;top:-25px;left: 112px;" class="floatLeft">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>客户经理人员</label>
            <div class="col-sm-2 col-xs-2"  style="position: relative;">
                <input class="form-control input-sm" type="text" placeholder="请选择客户经理人员" id="customerManager" disabled="disabled">
                <img src="/static/images/btnselect.png"  id="customerManagerBtn" style="cursor: pointer;position: relative;top:-25px;left: 112px;" class="floatLeft">
            </div>
            <label class="col-sm-1 control-label col-xs-1"><span class="redStart">*</span>现场检查岗人员</label>
            <div class="col-sm-2 col-xs-2"  style="position: relative;">
                <input class="form-control input-sm" type="text" placeholder="请选择现场检查岗人员" id="wareSuper" disabled="disabled">
                <img src="/static/images/btnselect.png"  id="wareSuperBtn" style="cursor: pointer;position: relative;top:-25px;left: 112px;" class="floatLeft">
            </div>
        </div>
    </form>
    <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="saveBtn">保存</button>
        <button type="button" class="btn btn-info" id="submitBtn">提交</button>
        <button type="button" class="btn btn-default" data-dismiss="modal" id="addCancle">取消</button>
    </div>
</div>
<script type="text/javascript" src="/static/js/jquery/jquery-2.0.3.min.js"></script>
<script type="text/javascript" src="/static/js/bootstrap-daterangepicker/daterangepicker.min.js"></script>
<script type="text/javascript" src="/static/js/jQuery-BlockUI/jquery.blockUI.min.js"></script>
<script type="text/javascript" src="/static/js/jqgrid/js/grid.locale-en.min.js"></script>
<script type="text/javascript" src="/static/js/jqgrid/js/jquery.jqGrid.min.js"></script>
<script type="text/javascript" src="/static/js/bootstrap-table.js"></script>
<script type="text/javascript" src="/static/js/bootstrap-table-zh-CN.js"></script>
<%--layer--%>
<script src="/static/layer-v3.1.1/layer/layer.js"></script>
<%--时间控件--%>
<script type="text/javascript" src="/static/js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
<script type="text/javascript" src="/static/js/bootstrap.js"></script>
<script type="text/javascript" src="/static/js/jQuery-Cookie/jquery.cookie.min.js"></script>
<script type="text/javascript" src="/static/js/script.js"></script>

<script type="text/javascript" src="/static/public/public.js"></script>
<script>
    var index = parent.layer.getFrameIndex(window.name);
//    保存
    $("#saveBtn").click(function () {
        ajaxPart("post","/business/creatsave",'application/json;charset=UTF-8',"json",JSON.stringify({
            borrowerName:$("#borrowerName").val(),
            businessConum:$("#businessConum").val(),
            checker:$("#checker").val(),
            cooNum:$("#cooNum").val(),
            superDep:$("#superDep").val(),
            mortageRate:$("#mortageRate").val(),
            riskExposure:$("#riskExposure").val(),
            customerManager:$("#customerManager").val(),
            wareSuper:$("#wareSuper").val(),
            deadLine:$("#deadLine").val(),
            marketCity:$("#marketCity").val(),
            material:$("#material").val(),
            specType:$("#specType").val(),
            measureUnit:$("#measureUnit").val(),
            count:$("#count").val(),
            morClassify:$("#morClassifyInput").val(),
            totalValue  :$("#totalValue ").val(),
            mortgageName:$("#mortgageName").val(),
            priceUnit:$("#priceUnit").val(),
            producer:$("#producer").val(),
            unitPrice:$("#unitPrice").val(),
            morValue :$("#morValue ").val(),
            morTime:$("#morTime").val()
        }), function (response) {
            if(response.code==0){
                alert(response.message);
                parent.layer.close(index);
            }else{
                alert(response.message)
            }
        })
    })
//    提交
    $("#submitBtn").click(function () {
        ajaxPart("post","/business/create",'application/json;charset=UTF-8',"json",JSON.stringify({
            borrowerName:$("#borrowerName").val(),
            businessConum:$("#businessConum").val(),
            checker:$("#checker").val(),
            cooNum:$("#cooNum").val(),
            superDep:$("#superDep").val(),
            mortageRate:$("#mortageRate").val(),
            riskExposure:$("#riskExposure").val(),
            customerManager:$("#customerManager").val(),
            wareSuper:$("#wareSuper").val(),
            deadLine:$("#deadLine").val(),
            marketCity:$("#marketCity").val(),
            material:$("#material").val(),
            specType:$("#specType").val(),
            measureUnit:$("#measureUnit").val(),
            count:$("#count").val(),
            morClassify:$("#morClassifyInput").val(),
            totalValue:$("#totalValue ").val(),
            mortgageName:$("#mortgageName").val(),
            priceUnit:$("#priceUnit").val(),
            producer:$("#producer").val(),
            unitPrice:$("#unitPrice").val(),
            morValue :$("#morValue ").val(),
            morTime:$("#morTime").val()
        }),function (response) {
            if(response.code==0){
                alert(response.message);
                parent.layer.close(index);
            }else{
                alert(response.message)
            }
        });
    })
//    取消
    $("#addCancle").click(function () {
        parent.layer.close(index);
    })
//    贷款种类树形图
    $('#morClassifyBtn').on('click', function(){
        layer.open({
            type: 2,
            title: '贷款种类',
            maxmin: true,
            shadeClose: true, //点击遮罩关闭层
            area : ['300px' , '460px'],
            content: '/views/tree/morClassify.do'
        });
    });
    //    客户经理人员
    $('#customerManagerBtn').on('click', function(){
        layer.open({
            type: 2,
            title: '客户经理人员',
            maxmin: true,
            shadeClose: true, //点击遮罩关闭层
            area : ['360px' , '460px'],
            content: '/views/tree/customerManager.do'
        });
    });
    //    现场检查岗人员
    $('#wareSuperBtn').on('click', function(){
        layer.open({
            type: 2,
            title: '现场检查岗人员',
            maxmin: true,
            shadeClose: true, //点击遮罩关闭层
            area : ['360px' , '460px'],
            content: '/views/tree/wareSuperBtn.do'
        });
    });
//    复核岗
    $('#checkerBtn').on('click', function(){
        layer.open({
            type: 2,
            title: '复核岗',
            maxmin: true,
            shadeClose: true, //点击遮罩关闭层
            area : ['360px' , '460px'],
            content: '/views/tree/checkerBtn.do'
        });
    });
</script>
<script>
    jQuery(document).ready(function() {
        $(".datepicker").datepicker({
            dateFormat:'yy-mm-dd', // 设置日期格式
            monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],
            dayNamesMin: ['日','一','二','三','四','五','六']
        });
        App.init(); //Initialise plugins and elements
    });
</script>
</body>
</html>
