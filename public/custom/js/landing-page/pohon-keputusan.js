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

            $('#table-data-rule').DataTable({
                ajax : {
                    url : '/data-table-data-rule',
                    dataSrc : ''
                  },
                  "columnDefs": [ 
                    {"targets": 0,
                      "data": 0,
                      "render": function ( data, type, row, meta ) {
                        return '<div class="row center"><div class="col">'+data+'</div></div>';
                      }
                    },
                    {"targets": 1,
                      "data": 1,
                      "render": function ( data, type, row, meta ) {
                        return '<div class="row center"><div class="col">'+data+'</div></div>';
                      }
                    },
                    {"targets": 2,
                      "data": 2,
                      "render": function ( data, type, row, meta ) {
                        return '<div class="row center"><div class="col">'+data+'</div></div>';
                      }
                    },
                ],
            });
        }
    })
}

function DeleteRule(){
    $.LoadingOverlay("show", {
        image       : "",
        fontawesome : "fa fa-cog fa-spin",
    });
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        url     : '/delete-rule',
        data    : {},
        type    : 'post',
        dataType : 'json',
        success : function(q){
            if(q.code == 200){
                $.LoadingOverlay("hide");
                $('.keterangan-tersembunyi').removeClass('keterangan-tersembunyi');
                Swal.fire({
                    icon: 'success',
                    title: 'Semua Rule Telah Terhapus',
                    html : 'Silahkan Cek Pohon Keputusan',
                    timerProgressBar: true,
                    timer: 9000,
                    didOpen: () => {
                        Swal.showLoading()
                        timerInterval = setInterval(() => {
                          const content = Swal.getContent()
                          if (content) {
                            const b = content.querySelector('b')
                            if (b) {
                              b.textContent = Swal.getTimerLeft()
                            }
                          }
                        }, 100)
                      },
                      willClose: () => {
                        clearInterval(timerInterval)
                    }
                })
            }else if(q.code == 500){
                $.LoadingOverlay("hide");
                Swal.fire({
                    icon: 'warning',
                    title: 'Data Rule Masih Kosong',
                    html : 'Mohon Melakukan Proses Mining Terlebih Dahulu',
                    timerProgressBar: true,
                    timer: 9000
                })
            }
        },
        error : function(e){
            $.LoadingOverlay("hide");
            Swal.fire({
                icon: 'warning',
                title: 'Terjadi Kesalahan',
                html : 'Mohon Hubungi Pengembang',
                timerProgressBar: true,
                timer: 9000
            })
        }
    })
}

function HitungAkurasi(){
    // $.LoadingOverlay("show", {
    //     image       : "",
    //     fontawesome : "fa fa-cog fa-spin",
    // });
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        url : 'akurasi-rule',
        data : {},
        type    : 'post',
        dataType : 'html',
        success : function(html){
            if ($(".data_content").length){
                $(".data_content").remove();
            }
            $(' #content_modal').append(html);
            $('.master_modal').modal('show');
        }
    })
}