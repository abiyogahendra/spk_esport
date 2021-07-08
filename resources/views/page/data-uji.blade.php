<div class="child data-uji">
    <div class="container">
        <div class="container-fluid">
            <div class="row">
                <div class="col">
                    <!-- USER DATA-->
                    <div class="user-data">
                        <h1 class="title-3 m-b-30 center"><i class="zmdi zmdi-account-calendar"></i>Input Data Uji</h1>
                        <form action="upload-data-uji" method="post" enctype="multipart/form-data">
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-md-9 center" >
                                        <input type="file" id="file-input" style="border-style: solid; border-color: #bbbbbb;" name="data_uji" class="form-control-file">
                                    </div>
                                </div>
                            </div>
                        </form>
                        <div class="user-data__footer">
                            <button class="btn btn-outline-success btn-lg" onclick="PostInputDataUji()"><i class="fas fa-plus-square"></i> Upload</button>
                            <button class="btn btn-outline-success btn-lg" onclick="MiningDataUji()"><i class="fas fa-plus-square"></i> Mining Data Uji</button>
                            <button type="button" class="btn btn-outline-danger btn-lg" onclick="DeleteDataUji()"><i class="fa fa-warning"></i> Hapus Semua Data Uji</button>
                        </div>
                    </div>
                    <!-- END USER DATA-->
                </div>
            </div>
        </div>
    </div>
    <br>
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <!-- USER DATA-->
                <div class="user-data">
                    <h1 class="title-3 m-b-30 center"><i class="zmdi zmdi-account-calendar"></i>Data Uji</h1>
                    <div class="container">
                        <div class="table-responsive table--no-card m-b-30">
                            <table class="table table-borderless table-striped table-earning" id="table-data-uji">
                                <thead>
                                    <tr class="center">
                                        <th>ID Username</th>
                                        <th>Player Experience</th>
                                        <th>Skill</th>
                                        <th>Intelligence</th>
                                        <th>Attitude</th>
                                        <th>Turnamen</th>
                                        <th>Target</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- END USER DATA-->
            </div>
        </div>
    </div>
</div>