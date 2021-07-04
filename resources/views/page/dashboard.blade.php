@extends ('layout.master-layout')

@section ('content')

<div class="mother">
    <div class="child dashboard">
        <div class="container center">
            <div class="container-fluid">
                <div class="row">
                    <div class="col">
                        <!-- USER DATA-->
                        <div class="user-data">
                            <h1 class="title-3 m-b-30"><i class="zmdi zmdi-account-calendar"></i>Selamat Datang</h1>
                            <div class="row justify-content-center">
                                <div class="col-8 center">
                                    Aplikasi Algoritma C4.5 untuk Perekrutan Talent E-Sports ini adalah aplikasi 
                                    yang dibuat untuk melakukan klasifikasi dan prediksi terhadap talent-talent E-Sports 
                                    dengan menggunakan Algoritma C4.5 untuk menghasilkan Rule atau Aturan dari pohon keputusan yang akan digunakan untuk menentukan apakah talent-talent E-Sports tersebut dinyatakan “Diterima” atau “Tidak” untuk menjadi anggota Tim E-Sports, dengan atribut yang digunakan adalah Player Experience, 
                                    Skill, Attitude, Intellegensia dan Turnamen.
                                </div>
                            </div>
                            <div class="user-data__footer">
                                <button class="au-btn au-btn-load">load more</button>
                            </div>
                        </div>
                        <!-- END USER DATA-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection()

@section('custom-page')
    <script src="{{asset('custom/js/landing-page/dashboard.js')}}"></script>
    <script src="{{asset('custom/js/landing-page/data-talent.js')}}"></script>
    <script src="{{asset('custom/js/landing-page/data-mining.js')}}"></script>
    <script src="{{asset('custom/js/landing-page/pohon-keputusan.js')}}"></script>
    <script src="{{asset('custom/js/landing-page/prediksi-c4.js')}}"></script>
    <script src="{{asset('custom/js/landing-page/hasil-prediksi.js')}}"></script>
@endsection()