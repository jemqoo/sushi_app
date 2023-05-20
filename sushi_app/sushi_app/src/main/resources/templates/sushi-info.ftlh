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
            padding: 3px 0 0;
            border-radius: 12px;
            width: 80px;
            height: 20px;
            background-color: #FFBE16;
            color: black;
            cursor: pointer;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            text-align: center;
        }
        .subtitle {
            width: 200px;
            height: 42px;
            padding: 39px 0 0 16px;
        }

        .link {
            transition: opacity 0.5s;
            cursor: pointer;
        }

        .link:hover {
            opacity: 0.8;
        }
        .input{
            all: unset;
            margin-top: 10px;
            padding: 0 1px 0 7px;
            border-radius: 12px;
            width: 80px;
            height: 20px;
            background-color: #FFBE16;
            color: black;

        }
    </style>
</head>
<body>
<h1 class="title">SushiShop </h1>
<h3 class="sub title">Подробная информация о сушах</h3>
<b>Название: </b>${sushi.title}<br>
<b>Состав и калорийность: </b>${sushi.description}<br>
<b>Цена: </b>${sushi.price}<br><br>

<form action="/favours/add/${sushi.id}" method="post">
    <input class="input link" type="submit" value="Добавить">
</form>
</body>
</html>