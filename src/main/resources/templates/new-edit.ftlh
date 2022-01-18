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
        <#if !add>
            <input type="hidden" value="${contact.id}" name="id">
        </#if>
        <div class="row">
        <div class="mb-3 col-md-4">
            <label for="exampleInputFirstName" class="form-label ml-7">First Name</label>
            First Name : <@spring.formInput "contact.firstName" "" "text"/> <br/>
        </div>
        <div class="mb-3 col-md-4">
            <label for="exampleInputSecondName" class="form-label ml-1">Second Name </label>
            Second Name : <@spring.formInput "contact.secondName" "" "text"/> <br/>
        </div>
        <div class="mb-3 col-md-4">
            <label for="exampleInputNumbers" class="form-label"> Phone Number </label>
            Numbers : <@spring.formInput "contact.numbers" "" "text"/> <br/>
        </div>
        </div>
        <button type="submit" class="btn btn-success"><i class="fas fa-save me-1"></i> ${submitTitle}</button>
    </form>
    </div>
    </div>
<br/>
</body>
</html>