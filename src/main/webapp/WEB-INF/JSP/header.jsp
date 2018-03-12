<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav class="navbar navbar-expand-sm bg-dark">

    <a class="navbar-brand" href="/index">
        <img src="../../media/img/logo_new.png" width="100" class="d-inline-block align-top" alt="logo">
    </a>
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="/about">О нас<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a href="/login"><span class="glyphicon glyphicon-user"></span> Вход</a>
            </li>
            <li class="nav-item">
                <a href="/register">Регистрация</a>
            </li>
            <li class="nav-item">
                <a href="/users/list">Пользователи</a>
            </li>
            <li class="nav-item">
                <a href="/products/list"><span class="glyphicon glyphicon-list-alt"></span> Товары</a>
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
                <a href="/delivery">Доставка</a>
            </li>
            <li class="nav-item">
                <a href="#">Тест</a>
            </li>
        </ul>

        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
</nav>
