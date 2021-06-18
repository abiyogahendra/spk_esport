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

            $('#table-data-talent').DataTable({
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

function PostInputDataTalent(){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    var form = $('form')[0]; // You need to use standard javascript object here
    var formData = new FormData(form);
    $.ajax({
        url : 'upload-data-talent',
        data : formData,
        type : 'post',
        dataType : 'json',
        contentType: false, // NEEDED, DON'T OMIT THIS (requires jQuery 1.6+)
        processData: false, // NEEDED, DON'T OMIT THIS
        success : function(e){
            if(e.code == 200 ){
                Swal.fire({
                    icon: 'success',
                    title: 'Login Berhasil',
                    html : 'Selamat Datang',
                    timerProgressBar: true,
                    timer: 3000,
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
            }else{
                Swal.fire({
                    icon: 'warning',
                    title: 'Login Gagal',
                    html : 'Mohon Ulangi Kembali',
                    timerProgressBar: true,
                    timer: 3000
                })
            }
        }
    })
}