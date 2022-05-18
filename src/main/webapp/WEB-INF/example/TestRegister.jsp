<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="en"></html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>TestRegister</title>
  </head>
  <body>
    <h3>ENROLL / HIRE</h3>

    <s:form action="TestRegister" namespace="/example">
      <s:textfield key="personBean.userName"  label="Username"/>
      <s:textfield key="personBean.passWord"  label="Password"/>
      <s:textfield key="personBean.firstName"  label="First Name:"/>
      <s:textfield key="personBean.lastName"  label="Last Name"/>
      <s:textfield key="personBean.accountType"  label="Account Type"/>  
      <s:submit key="submit"/>
    </s:form>	
  </body>
</html>