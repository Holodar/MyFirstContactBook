<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Main Page</title>
</head>
<body>
 <h1>Welcome to Your Contact Book</h1>

    <h2>This is Your contacts:</h2>

 <button onclick="document.location='/new'">Create new contact</button>
 <br><br>
<div>

<table border="2">
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Phone Number</th>
    </tr>
    <#list contact as contacts>
        <tr>
            <td><a href="${'/' + contacts.id}">${contacts.firstName}</td>
            <td>${contacts.secondName}</td>
            <td>${contacts.numbers}</td>
            <td><form action="/${contacts.id}/edit" method="get">
                <input type="submit" value="Edit"/>
                </form> </td>

        </tr>
    </#list>
</table>
</div>



</body>
</html>