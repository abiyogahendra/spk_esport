function IndexDataMining(){
    if ($(".child").length){
        $(".child").remove();
    }
    $.ajax({
        url : '/index-mining',
        data : {},
        type : 'get',
        dataType : 'html',
        success : function(html){
            $('.mother').append(html);
            $('.nav-active').removeClass("active");
            $('.nav-data-mining').addClass("active");
        }
    })
}