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
    // e.preventDefault();
    $.ajax({
        url : '/upload-data-talent',
        data : formData,
        type : 'post',
        dataType : 'json',
        contentType: false, // NEEDED, DON'T OMIT THIS (requires jQuery 1.6+)
        processData: false, // NEEDED, DON'T OMIT THIS
        success : function(e){
            if(e.code == 200 ){
                Swal.fire({
                    icon: 'success',
                    title: 'Import Berhasil',
                    html : 'Silahkan Cek Kembali Dataset Anda',
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
            }else if(e.code == 300){
              Swal.fire({
                  icon: 'warning',
                  title: 'Dataset Masih Tersedia',
                  html : 'Mohon Hapus Terlebih Dahulu Dataset Untuk Melakukan Import',
                  timerProgressBar: true,
                  timer: 3000
              })
            }else{
                Swal.fire({
                    icon: 'warning',
                    title: 'Proses Gagal',
                    html : 'Mohon Hubungi Pengembang',
                    timerProgressBar: true,
                    timer: 3000
                })
            }
        },
        error : function(data){
           
            var a = data.responseJSON.errors;
            console.log(a);
            $.each(a, function(index, value){
                Swal.fire({
                    icon: 'warning',
                    title: 'Input Gagal',
                    html : value,
                    timerProgressBar: true,
                    timer: 4000
                }) 
            })
            // console.log(a);
           
        }
    })
}

function DeleteAllDataTalent(){
  Swal.fire({
    title: 'Apakah Kamu Yakin?',
    text: "Semua Dataset Yang sudah Terimport Akan Terhapus",
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'Hapus',
    cancelButtonText: 'Tidak'
  }).then((result) => {
    if (result.isConfirmed) {
      $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
      });
      $.ajax({
        url : '/delete-all-data-talent',
        data : {},
        type : 'post',
        dataType : 'json',
        contentType: false, // NEEDED, DON'T OMIT THIS (requires jQuery 1.6+)
        processData: false, // NEEDED, DON'T OMIT THIS
        success : function(e){
            if(e.code == 200 ){
                Swal.fire({
                    icon: 'success',
                    title: 'Hapus Berhasil',
                    html : 'Silahkan Upload Kembali Dataset Anda',
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
            }else if(e.code == 300){
                Swal.fire({
                    icon: 'warning',
                    title: 'Dataset Kosong',
                    html : 'Mohon Upload Dataset',
                    timerProgressBar: true,
                    timer: 3000
                })
            }else{
              Swal.fire({
                icon: 'warning',
                title: 'Terjadi Kesalahan',
                html : 'Mohon Hubungi Pengembang',
                timerProgressBar: true,
                timer: 3000
            })
            }
        },
        error : function(data){
            var a = data.responseJSON.errors;
            console.log(a);
            $.each(a, function(index, value){
                Swal.fire({
                    icon: 'warning',
                    title: 'Input Gagal',
                    html : value,
                    timerProgressBar: true,
                    timer: 4000
                }) 
            })
        }
      })
    }
  })
  
  
  
  
  
}