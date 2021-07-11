<header class="header-mobile d-block d-lg-none">    
    <div class="header-mobile__bar">
        <div class="container-fluid">
            <div class="header-mobile-inner">
                <a class="logo" href="index.html">
                    <img width="80%" src="{{asset('template/images/icon/logo.png')}}" alt="CoolAdmin" />
                </a>
                <button class="hamburger hamburger--slider" type="button">
                    <span class="hamburger-box">
                        <span class="hamburger-inner"></span>
                    </span>
                </button>
            </div>
        </div>
    </div>
    <nav class="navbar-mobile">
        <div class="container-fluid">
            <ul class="navbar-mobile__list list-unstyled">
                <li class="has-sub">
                    <a class="js-arrow" href="#">
                        <i class="fas fa-desktop"></i>Beranda</a>
                </li>
                <li>
                    <a href="chart.html">
                        <i class="fas  fa-users"></i>Data Talent</a>
                </li>
                <li>
                    <a href="table.html">
                        <i class="fas fa-gears"></i>Data Mining</a>
                </li>
                <li>
                    <a href="form.html">
                        <i class="fa fa-sitemap"></i>Pohon Keputusan</a>
                </li>
                <li>
                    <a href="calendar.html">
                        <i class="fas fa-calendar-alt"></i>Prediksi C4</a>
                </li>
                <li>
                    <a href="map.html">
                        <i class="fas fa-bar-chart-o"></i>Hasil Prediksi</a>
                </li>
            </ul>
        </div>
    </nav>
</header>
<aside class="menu-sidebar d-none d-lg-block">
    <div class="logo">
        <a href="#">
            <img width="80%" src="{{asset('template/images/icon/logo.png')}}" alt="Cool Admin" />
        </a>
    </div>
    <div class="menu-sidebar__content js-scrollbar1">
        <nav class="navbar-sidebar">
            <ul class="list-unstyled navbar__list">
                <li class="nav-active active has-sub">
                    <a class="js-arrow" href="#" onclick="IndexDashboard()">
                        <i class="fas fa-desktop"></i>Beranda</a>
                </li>
                <li class="nav-active nav-data-talent has-sub">
                    <a href="#" onclick="IndexDataTalent()">
                        <i class="fas  fa-users"></i>Data Talent</a>
                </li>
                <li class="nav-active nav-data-mining has-sub">
                    <a href="#" onclick="IndexDataMining()">
                        <i class="fas fa-gears"></i>Data Mining</a>
                </li>
                <li class="nav-active nav-data-uji has-sub">
                    <a href="#" onclick="IndexDataUji()">
                        <i class="fa fa-sitemap"></i>Import Data Uji</a>
                </li>
                <li class="nav-active nav-pohon-keputusan has-sub">
                    <a href="#" onclick="IndexPohonKeputusan()">
                        <i class="fa fa-sitemap"></i>Pohon Keputusan</a>
                </li>
                <li class="nav-active nav-prediksi-c4 has-sub">
                    <a href="#" onclick="IndexPrediksiC4()">
                        <i class="fas fa-user"></i>Prediksi C4.5</a>
                </li>
            </ul>
        </nav>
    </div>
</aside>

