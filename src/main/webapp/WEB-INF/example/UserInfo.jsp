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

    <title>MadDonalds-UserInfo</title>
</head>
<body>

    <h1 id="top">DETAILS:</h1>
    <h2 id="bot"> -------------------</h2>
    <s:set var="currentAccountVar" value="currentAccount"/>
    <s:if test='%{#currentAccountVar.firstName == "Mad"}'>
        <img src="https://res.klook.com/image/upload/c_fill,w_720,h_500,f_auto/w_80,x_15,y_15,g_south_west,l_klook_water/activities/jcqwb3gd7mpvagnns67z.webp" alt="Alp" style="width:168px;height:168px;">
    </s:if>

    <s:if test='%{#currentAccountVar.firstName == "Mad1"}'>
        <img src="https://www.boredpanda.com/blog/wp-content/uploads/2021/09/2fa7a2da4b014297b6c3bacc0d9c98b2-1-6155b3d1535a1__700.jpg" alt="Alp2" style="width:168px;height:168px;">
    </s:if>

    <s:if test='%{#currentAccountVar.firstName == "Mad2"}'>
        <img src="https://www.thoughtco.com/thmb/0TBo4z3LZFjxp_REZIJtNYvNHHI=/2304x2304/smart/filters:no_upscale()/GettyImages-667718541-21cf8e687d254fc49a161371961c038b.jpg" alt="Alp3" style="width:168px;height:168px;">
    </s:if>
    <h1>First Name  :<s:property value="#currentAccountVar.firstName"/></h1>
    <h1>Last Name   :<s:property value="#currentAccountVar.lastName"/></h1>
    <h1>Birthday    :<s:property value="#currentAccountVar.birthDate"/></h1>
    <h1>Account Type:<s:property value="#currentAccountVar.accountType"/></h1>
    <h2 id="bot"> -------------------</h2>

    <s:if test='%{#currentAccountVar.accountType == "Regular"}'>
        <h2>
            <s:url var="regularPage" action="RegularPage"/>
            <s:a href="%{regularPage}">ORDER</s:a>
        </h2>
    </s:if>

    <s:if test='%{#currentAccountVar.accountType == "Admin"}'>
        <h2>
            <s:url var="adminPage" action="AdminPage"/>
            <s:a href="%{adminPage}">VOID ORDER</s:a>
        </h2>
    </s:if>

    <s:if test='%{#currentAccountVar.accountType == "SuperAdmin"}'>
        <h1>--REVENUE-- </h1>
        <h2>YEARLY: P10,000,000</h2>
        <h2>MONTHLY: P100,000</h2>
        <h2>DAILY: P33,000</h2>
    </s:if>
    <h2 id="bot"> -------------------</h2>

</body>
</html>