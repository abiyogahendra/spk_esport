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

            $('#table-data-mining').DataTable({
                ajax : {
                    url : '/data-table-data-talent',
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
                    {"targets": 3,
                      "data": 3,
                      "render": function ( data, type, row, meta ) {
                        return '<div class="row center"><div class="col">'+data+'</div></div>';
                      }
                    },
                    {"targets": 4,
                      "data": 4,
                      "render": function ( data, type, row, meta ) {
                        return '<div class="row center"><div class="col">'+data+'</div></div>';
                      }
                    },
                    {"targets": 5,
                      "data": 5,
                      "render": function ( data, type, row, meta ) {
                        return '<div class="row center"><div class="col center">'+data+'</div></div>';
                      }
                    },
                ],
            });
        }
    })
}

function HitungMining(){
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
        url     : '/hitung-mining',
        data    : {},
        type    : 'post',
        dataType : 'json',
        success : function(q){
            if(q.code == 200){
                $.LoadingOverlay("hide");
                $('.keterangan-tersembunyi').removeClass('keterangan-tersembunyi');
                Swal.fire({
                    icon: 'success',
                    title: 'Proses Mining Telah Berhasil',
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
                    title: 'Dataset Belum Terimport',
                    html : 'Mohon Import Terlebih Dahulu Dataset Untuk Melakukan Prosees Mining',
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
