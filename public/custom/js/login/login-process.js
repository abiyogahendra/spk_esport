function validateEmail(email) {
    var emailReg = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    console.log(email);
    return emailReg.test(email);
}

function LoginProcess(){
    // e.message('sadad');
    $.LoadingOverlay("show", {
        image       : "",
        fontawesome : "fa fa-cog fa-spin",
    });
       $('.alert').addClass('hide-dulu');
        $.ajax({
            url : '/login_process',
            data : {
                email :$('input[name=email]').val(),
                password : $('input[name=password]').val(),
                _token : data_token,
            },
            type : 'post',
            dataType : 'json',
            success : function(e){
                $.LoadingOverlay("hide");
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
                      document.location.href = '/';
                }else{
                    Swal.fire({
                        icon: 'warning',
                        title: 'Login Gagal',
                        html : 'Mohon Ulangi Kembali',
                        timerProgressBar: true,
                        timer: 3000
                    })
                }
            },
            error : function(data){
                var a = data.responseJSON.errors;
                // console.log(a);
                $.each(a, function(index, value){
                    // console.log(index)
                    $(' [name=' + index + ']').closest('.inputan').find(".alert").text(value).removeClass('hide-dulu');
                })
            }
        })
    // }
    console.log(email, password);
}