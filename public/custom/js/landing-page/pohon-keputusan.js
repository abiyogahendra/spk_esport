function IndexPohonKeputusan(){
    if ($(".child").length){
        $(".child").remove();
    }
    $.ajax({
        url : '/index-pohon-keputusan',
        data : {},
        type : 'get',
        dataType : 'html',
        success : function(html){
            $('.mother').append(html);
            $('.nav-active').removeClass("active");
            $('.nav-pohon-keputusan').addClass("active");
        }
    })
}