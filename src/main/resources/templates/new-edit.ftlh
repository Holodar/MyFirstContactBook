<#import "/spring.ftl" as spring />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>New contact</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/44efc4df78.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container">
<h1 class="display-1 mb-4"><#if add>Create a Contact:<#else>Edit a Contact:</#if></h1>
<a href="/">Back to Contacts List</a>
<br/><br/>

<#if add>
    <#assign urlAction>new</#assign>
    <#assign submitTitle>Create</#assign>
<#else>
    <#assign urlAction>${'/'+contact.id+'/edit'}</#assign>
    <#assign submitTitle>Update</#assign>
</#if>
    <div>
    <form id="creatForm" action="${urlAction}" method="post">
        <div class="row">
        <div class="mb-3 col-md-4">
            <label for="exampleInputEmail1" class="form-label ml-7">First Name</label>
            <input type="text" class="form-control" id="firstName" value>
        </div>
        <div class="mb-3 col-md-4">
            <label for="exampleInputEmail1" class="form-label ml-1">Second Name </label>
            <input type="text" class="form-control" id="secondName" value>
        </div>
        <div class="mb-3 col-md-4">
            <label for="exampleInputEmail1" class="form-label"> Phone Number </label>
            <input type="text" class="form-control" id="numbers" value>
        </div>
        </div>
        <#--<input type="text" name="id"  hidden value="${contact.id}"/>-->
        <#--<#if contact.id??>
            <tr>
                <td>ID</td>
                <td>:</td>
                <td>${contact.id}</td>
            </tr>
        </#if>-->
       <#-- First Name : <@spring.formInput "contact.firstName" "" "text"/> <br/>
        <@spring.showErrors "<br>"/>
        Second Name : <@spring.formInput "contact.secondName" "" "text"/> <br/>
        <@spring.showErrors "<br>"/>
        Numbers : <@spring.formInput "contact.numbers" "" "text"/> <br/>
        <@spring.showErrors "<br>"/>-->
        <button type="submit" class="btn btn-success"><i class="fas fa-save me-1"></i> ${submitTitle}</button>

    </form>
    </div>
    </div>
<br/>
</body>
</html>