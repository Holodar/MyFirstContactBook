<h1><#if add>Create a Contact:<#else>Edit a Contact:</#if></h1>
<a href="/home">Back to Contacts List</a>
<br/><br/>
<#if add>
    <#assign urlAction>/home/new</#assign>
    <#assign submitTitle>Create</#assign>
<#else>
    <#assign urlAction>${'/'+contact.id+'/edit'}</#assign>
    <#assign submitTitle>Update</#assign>
</#if>
<form action="${urlAction}" name="contact" method="post">
    <table border="0">

        <tr>
            <td>First Name</td>
            <td>:</td>
            <td><input type="text" name="first name" value="${(contact.firstName)!''}"/></td>
        </tr>
        <tr>
            <td>Second Name</td>
            <td>:</td>
            <td><input type="text" name="second name" value="${(contact.secondName)!''}"/></td>
        </tr>
        <tr>
            <td>Number</td>
            <td>:</td>
            <td><input type="text" name="number" value="${(contact.numbers)!''}"/></td>
        </tr>
    </table>
    <input type="submit" value="${submitTitle}"/>
</form>

<br/>
<#if noErrors?has_content>
    <div class="error">${noErrors}</div>
</#if>