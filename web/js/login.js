/**
 * Created by lee on 2017/4/2.
 */
$(function() {
    //点击登录按钮 弹出层并初始化弹出层位置
    $("#btnlogin").click(function() {
        $("#corBackground").animate({ opacity: "show" }, "slow");
        $("#corInsertHref").animate({ opacity: "show" }, "slow");
        //language=JQuery-CSS
        autoSize($("#corInsertHref"));
    });
    //点击关闭按钮 关闭弹出层
    $("#close").click(function() {
        $("#corBackground").animate({ opacity: "hide" }, "slow");
        //language=JQuery-CSS
        $("#corInsertHref").animate({ opacity: "hide" }, "slow");
    });
    //窗口大小缩放事件
    $(window).resize(function() {
        autoSize($("#corInsertHref"));
    });
    //窗口大小缩放时调整弹出层的位置
    var autoSize = function(corObj) {
        var wWidth = $(window).width(), wHeight = $(window).height();
        var ihWidth = corObj.outerWidth(true), ihHeight = corObj.outerHeight(true);

        corObj.css({ "top": ((wHeight - ihHeight) / 2) + "px", "left": ((wWidth - ihWidth) / 2) + "px" });
    }
});