<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/index">
                <img src="../../media/img/logo_new.png" width="100" class="d-inline-block align-top" alt="logo">
            </a>
        </div>

        <div class="navbar-collapse collapse" id="myNavbar">
        <ul class="nav navbar-nav">
            <li class="active">
                <a class="nav-link" href="/about">О нас<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a href="/login"><span class="glyphicon glyphicon-user"></span> Вход</a>
            </li>
            <li class="nav-item">
                <a href="/register">Регистрация</a>
            </li>
            <li class="nav-item">
                <a href="/delivery">Доставка</a>
            </li>
            <li class="nav-item">
                <a href="#">Тест</a>
            </li>

            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Админка<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li class="nav-item">
                        <a href="/users/list">Пользователи</a>
                    </li>
                    <li class="nav-item">
                        <a href="/countries/list">Страны</a>
                    </li>
                    <li class="nav-item">
                        <a href="/categories/list">Категории</a>
                    </li>
                    <li class="nav-item">
                        <a href="/compatibilities/list">Совместимость</a>
                    </li>
                    <li class="nav-item">
                        <a href="/products/list"><span class="glyphicon glyphicon-list-alt"></span> Товары</a>
                    </li>
                </ul>
            </li>

        </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>

                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </ul>

        </div>
    </div>

</nav>
<div id="headerwrap">
<div class="container">
    <div class="row centered">
        <h1>Интернет-магазин фирмы "HODOVKA"</h1>
        <h2>Сайт работает на Bootstrap и java</h2>
    </div>
</div>
</div>