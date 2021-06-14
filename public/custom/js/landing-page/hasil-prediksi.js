function IndexHasilPrediksi(){
    if ($(".child").length){
        $(".child").remove();
    }
    $.ajax({
        url : '/index-hasil-prediksi',
        data : {},
        type : 'get',
        dataType : 'html',
        success : function(html){
            $('.mother').append(html);
            $('.nav-active').removeClass("active");
            $('.nav-hasil-prediksi').addClass("active");

        }
    })
}