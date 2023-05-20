<!DOCTYPE html>
<html>
<head>
    <title>Суши-бар</title>
    <style>
        body {
            background: #1b1d1f;
            margin: auto;
            padding: 0;
            font-family: "Inter", Arial, sans-serif;
            color: #ffffff;
            text-rendering: optimizeLegibility;
            max-width: 880px;
        }
        .title {
            text-align: center;
            font-size: 42px;
            line-height: 48px;

        }

        .fav {
            all: unset;
            padding: 3px 0 0;
            border-radius: 12px;
            width: 80px;
            height: 20px;
            background-color: #FFBE16;
            color: black;
            cursor: pointer;
        }

        .frame {
            all: unset;
            margin: 3px 0;
            padding: 3px 0 0;
            border-radius: 10px;
            background-color: #FFBE16;
            color: black;
            cursor: pointer;
            width: 300px;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            text-align: center;
        }
        .header__logo {
            width: 200px;
            height: 42px;
            padding: 39px 0 0 16px;
        }
        .header__lang-links {
            margin: 10px 16px 0 0;
            padding: 0;
            display: flex;
            gap: 18px;
        }
        .header__lang-link {
            text-decoration: none;
            max-width: 22px;
            color: #fff;
            font-weight: 400;
            font-size: 18px;
            line-height: 20px;
        }
        .header__lang-link_active {
            text-decoration: underline;
        }

        .link {
            transition: opacity 0.5s;
        }

        .link:hover {
            opacity: 0.8;
        }
        .add{
            display: flex;
            gap: 5px;
        }
        a{
            text-decoration: none;
            color: black;
            transition: opacity 0.5s;
            cursor: pointer;
        }
        a:hover{
            opacity: 0.8;
        }
        .poisk{
            all: unset;
            padding: 3px 0 0 3px;
            border-radius: 8px;
            background-color: #FFBE16;
            color: black;
            cursor: pointer;
            width: 50px;
        }
    </style>
</head>

<body>
<header class="header">
    <p class="header__logo">Доставка по всей Москве</p>
    <h1 class="title">SushiShop</h1>
    <div class="header__lang-links">
        <a
                href="#"
                class="header__lang-link header__lang-link_active link"
                lang="En"
        >Ru</a
        >
        <a href="#" class="header__lang-link link" lang="En">En</a>
        <a class="fav link" href="/favours">Корзина</a>
    </div>
</header>

<form action="/" method="get">
    Поиск по названию: <input type="text" name="title">
    <input class="poisk" type="submit" value="Поиск"/>
</form>


<#list sushis as sushi>
    <div class="add">
        <p class="frame"><b>${sushi.title}</b> ${sushi.price} руб.  |   <a href="/sushi/${sushi.id}">Подробнее...</a></p>
    </div>
<#else>
    <h3>Суши не найдены</h3>
</#list>

</body>
</html>