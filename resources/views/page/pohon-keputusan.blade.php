<div class="child pohon-keputusan">
    <div class="container">
        <div class="container-fluid">
            <div class="row">
                <div class="col">
                    <!-- Head DATA-->
                    <div class="user-data">
                        <h1 class="title-3 m-b-30 center"><i class="zmdi zmdi-account-calendar"></i>Pohon Keputusan</h1>
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-md-9 center" >
                                        <button class="btn btn-outline-success btn-lg" onclick="HitungAkurasi()"><i class="fas fa-bar-chart-o"></i> Hitung Tingkat Akurasi</button>
                                        <button type="button" class="btn btn-outline-danger btn-lg" onclick="DeleteAllRule()"><i class="fa fa-warning"></i> Hapus Data Rule</button>
                                    </div>
                                </div>
                            </div>
                        <div class="user-data__footer">
                        </div>
                    </div>
                    <!-- END Head DATA-->
                </div>
            </div>
        </div>
    </div>
    <br>
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <!-- Rule DATA-->
                <div class="user-data">
                    <h1 class="title-3 m-b-30 center"><i class="zmdi zmdi-account-calendar"></i>Data Rule</h1>
                    <div class="container">
                        <div class="table-responsive table--no-card m-b-30">
                            <table class="table table-borderless table-striped table-earning" id="table-data-rule">
                                <thead>
                                    <tr class="center">
                                        <th>ID Rule</th>
                                        <th>Rule</th>
                                        <th>Keputusan</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- END Rule DATA-->
            </div>
        </div>
    </div>
</div>