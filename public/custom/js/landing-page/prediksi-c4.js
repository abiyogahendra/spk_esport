function IndexPrediksiC4(){
    if ($(".child").length){
        $(".child").remove();
    }
    $.ajax({
        url : '/index-prediksi-c4',
        data : {},
        type : 'get',
        dataType : 'html',
        success : function(html){
            $('.mother').append(html);
            $('.nav-active').removeClass("active");
            $('.nav-prediksi-c4').addClass("active");

        }
    })
}