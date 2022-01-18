<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/44efc4df78.js" crossorigin="anonymous"></script>
    <title>Contact ID</title>
</head>
<body>
 <div class="container">
     <h1 class="display-1 mb-4">This you Contact:</h1>
     <a href="/">Back to Contacts List</a>
     <br>
     <ul class="list-group mb-4">
         <li class="list-group-item">First name : ${contact.firstName}</li>
         <li class="list-group-item">Second name : ${contact.secondName}</li>
         <li class="list-group-item">Number : ${contact.numbers}</li>
         <li class="list-group-item">Contact ID : ${contact.id}</li>
     </ul>
     <form action="${contact.id}" method="DELETE">
        <button type="submit" class="btn btn-danger"><i class="fas fa-trash me-1"></i> Delete</button>
     </form>
 </div>
</body>
</html>