<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Conatact ID</title>
</head>
<body>

<h1>This you Contact:</h1>

<a href="/">Back to Contacts List</a>

    <p>First name : ${contact.firstName}</p>
    <p>Second name : ${contact.secondName}</p>
    <p>Number : ${contact.numbers}</p>

    <p>Contact ID : ${contact.id}</p>
    <br><br>

    <form action="${contact.id}" method="POST">
        <input type="submit" value="Delete"/>
    </form>


</body>
</html>