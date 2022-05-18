<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

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

    <title>MadDonalds Login</title>
</head>
<body>
    <img src="https://preview.redd.it/7ar3pa2mb7o21.jpg?auto=webp&s=9b1d0f3eb502c20aefda19eea449218929eb3460" alt="Wc" style="width:600px;height:200px;">
    <h1 id="top">WELCOME TO MadDonalds</h1>

    <s:form action="MyLogin" namespace="/example">
        
    <h2 id="top">
        <s:property value="errorMessage"/>
    </h2>
        <s:textfield key="userName"/>
        <s:textfield key="passWord"/>
    <s:submit key="submit"/>
    </s:form>


</body>
</html>