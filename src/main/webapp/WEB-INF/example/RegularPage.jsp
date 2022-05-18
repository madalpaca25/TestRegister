<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <style>
            #top{
                    color: red
            }
            #mid{
                    color: black
            }
            #bot{
                    color: rgb(9, 90, 33)
            }
    </style>

<title>MadDonalds</title>

</head>
<body>
        <header>
                <h1>WELCOME TO MadDonalds</h1>
                <s:url var="aboutPage" action="About"/>
                <s:a href="%{aboutPage}">To about Page</s:a>
        </header>
        <main>
            <h2 id="bot"> -------------------</h2>
            <h1 id="mid"> MENU: </h1>

                <s:url var="burgerPage" action="Burger"/>
                <s:a href="%{burgerPage}">[1] Burger</s:a>

                <s:url var="friesPage" action="Fries"/>
                <s:a href="%{friesPage}">[2] Fries</s:a>

                <s:url var="drinksPage" action="Drinks"/>
                <s:a href="%{drinksPage}">[3] Drinks</s:a>

            <h2 id="bot"> -------------------</h2>
            <h1 id="mid"> ORDERS: </h1>
            <h2 id="bot"> -------------------</h2>
            <h1 id="mid"> TOTAL: </h1>
            <h2 id="bot"> -------------------</h2>
        </main>
</body>

</html>
