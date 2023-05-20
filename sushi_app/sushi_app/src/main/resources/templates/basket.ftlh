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
        .input {
            all: unset;
            padding: 3px 0 0 5px;
            border-radius: 10px;
            width: 68px;
            height: 20px;
            background-color: #FFBE16;
            color: black;
           cursor: pointer;
            margin-bottom: 3px;
        }
        a{
            all: unset;
            border-radius: 10px;
            background-color: #FFBE16;
            color: black;
            cursor: pointer;
        }
        .link {
            transition: opacity 0.5s;
        }

        .link:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
<h1 class="title">Корзина</h1>

<#list favSushis as sushi>
    <div>
        <b>${sushi.title}</b>  |   ${sushi.price} руб.
        <form action="/favours/delete/${sushi.id}" method="post">
            <input class="input link" type="submit" value="Удалить"/>
        </form>

    </div>
<#else>
    <h3>В корзине пусто</h3>
</#list>


<a class="back" href="/">Вернуться на главную</a>
</body>
</html>