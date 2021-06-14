function IndexDataTalent(){
    if ($(".child").length){
        $(".child").remove();
    }
    $.ajax({
        url : '/index-talent',
        data : {},
        type : 'get',
        dataType : 'html',
        success : function(html){
            $('.mother').append(html);
            $('.nav-active').removeClass("active");
            $('.nav-data-talent').addClass("active");

        }
    })
}