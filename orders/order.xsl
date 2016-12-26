<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/orders">
        <html lang="ru">
            <head>
                <meta charset="utf-8"/>
                <title>Index</title>
                <link href="styles/bootstrap.min.css" rel="stylesheet"/>
                <link href="styles/style.css" rel="stylesheet"/>
            </head>

            <body>

                <div class="header">
                    <div class="col-md-4">
                        <img src="img/logo.png"/>
                    </div>
                    <div class="col-md-4">
                        <h2>Доставим любой ваш груз в любую точку Беларуси</h2>
                    </div>
                    <div class="col-md-4">
                        <h3>График работы</h3><p>с 9.00 до 22.00</p><p>БЕЗ ВЫХОДНЫХ</p>
                    </div>
                </div>


                <div class="menu">
                    <nav class="navbar navbar-default" role="navigation">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li><a href="index.html">Главная</a></li>
                                <li><a href="application.html">Оформить заявку</a></li>
                                <li><a href="#">Отзывы</a></li>
                                <li><a href="signin.html">Личный кабинет</a></li>
                            </ul>
                        </div>
                    </nav>
                </div>

                <div>
                    <h1>Заявка</h1>
                    <table>
                        <thead>
                            <td>Индекс</td>
                            <td>ФИО отправителя</td>
                            <td>Адрес отправителя</td>
                            <td>ФИО получателя</td>
                            <td>Адрес получателя</td>
                            <td>Вес груза, кг</td>
                            <td>Описание товара</td>
                        </thead>
                        <tbody>
                            <xsl:apply-templates mode="table" select="//application"/>
                        </tbody>
                    </table>
                </div>

            <div class="col-md-12 footer">
                (c) 2016. Шавеко Иван и Савко Тимур, студенты 1курса, 9 группы, ММФ<br/>express-delivery@gmail.com, +375331234567
            </div>

        </body>
    </html>
    </xsl:template>
    <xsl:template match="application" mode="table">
        <td><xsl:value-of select="@id"/></td>
        <td><xsl:value-of select="sender/@name"/> <xsl:value-of select="sender/@surname"/></td>
        <td><xsl:value-of select="sender/city"/>, <xsl:value-of select="sender/address"/></td>
        <td><xsl:value-of select="recipient/name"/>, <xsl:value-of select="recipient/surname"/></td>
        <td><xsl:value-of select="recipient/city"/>, <xsl:value-of select="recipient/address"/></td>
        <td><xsl:value-of select="cargo/@weight"/></td>
        <td><xsl:value-of select="cargo/view"/>, <xsl:value-of select="cargo/model"/>, <xsl:value-of select="/cargo/amount"/></td>
    </xsl:template>
</xsl:stylesheet>