<#import "/spring.ftl" as spring />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>New contact</title>
</head>
<body>
<fieldset>
<h1><#if add>Create a Contact:<#else>Edit a Contact:</#if></h1>
<a href="/">Back to Contacts List</a>
<br/><br/>

<#if add>
    <#assign urlAction>new</#assign>
    <#assign submitTitle>Create</#assign>
<#else>
    <#assign urlAction>${'/'+contact.id+'/edit'}</#assign>
    <#assign submitTitle>Update</#assign>
</#if>
    <form id="creatForm" class="idealform" action="${urlAction}" method="post">
        <#--<input type="text" name="id"  hidden value="${contact.id}"/>-->
        <#--<#if contact.id??>
            <tr>
                <td>ID</td>
                <td>:</td>
                <td>${contact.id}</td>
            </tr>
        </#if>-->
        First Name : <@spring.formInput "contact.firstName" "" "text"/> <br/>
        <@spring.showErrors "<br>"/>
        Second Name : <@spring.formInput "contact.secondName" "" "text"/> <br/>
        <@spring.showErrors "<br>"/>
        Numbers : <@spring.formInput "contact.numbers" "" "text"/> <br/>
        <@spring.showErrors "<br>"/>
        <input type="submit" value="${submitTitle}"/>
    </form>
<br/>
</fieldset>
</body>
</html>