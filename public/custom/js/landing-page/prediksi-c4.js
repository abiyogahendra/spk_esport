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
function Prediksi(){
    // $.LoadingOverlay("show", {
    //     image       : "",
    //     fontawesome : "fa fa-cog fa-spin",
    //   });   
    console.log('sdasdada');
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    // e.preventDefault();
    $.ajax({
        url : 'check-prediksi-talent',
        data : {},
        type : 'post',
        dataType : 'json',
        success : function(e){
            if(e.code == 200 ){
                $.ajax({
                    url : '/prediksi-talent',
                    data : {
                        id_talent : $('input[name=input_id_talent').val(),
                        player_experience : $('select[name=input_player_experience').find(":selected").val(),
                        skill : $('select[name=input_skill').find(":selected").val(),
                        attitude : $('select[name=input_attitude').find(":selected").val(),
                        intellegence : $('select[name=input_intellegence').find(":selected").val(),
                        turnament : $('select[name=input_turnament').find(":selected").val()
                    },
                    type : 'post',
                    dataType : 'html',
                    success : function(html){
                        if ($(".data_content").length){
                            $(".data_content").remove();
                        }
                        $(' #content_modal').append(html);
                        $('.master_modal').modal('show');   
                    },
                    error : function(e){

                    }
                })
            }else{
              $.LoadingOverlay("hide");
              Swal.fire({
                  icon: 'warning',
                  title: 'Rule Belum Tersedia',
                  html : 'Mohon Melakukan Pemprosesan Data Mining Terlebih Dahulu',
                  timerProgressBar: true,
                  timer: 3000
              })
            }
        }
    })
}