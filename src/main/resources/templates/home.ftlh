<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/44efc4df78.js" crossorigin="anonymous"></script>
    <title>Main Page</title>
</head>
<body class="bg-purple">
  <div class="container">
      <h1 class="display-1 mb-4">Welcome to Your Contact Book</h1>
      <h2>This is Your contacts:</h2>
      <div class="rounded overflow-hidden mt-4">
      <table class="table table-dark table-striped mb-0">
          <thead>
          <tr>
              <th scope="col">First Name</th>
              <th scope="col">Second Name</th>
              <th scope="col" colspan="2">Number</th>
          </tr>
          </thead>
          <tbody>
          <#list contact as contacts>
              <tr>
                  <td><a href="${'/' + contacts.id}" class="link-light ">${contacts.firstName}</a></td>
                  <td>${contacts.secondName}</td>
                  <td>${contacts.numbers}</td>
                  <td><a class="btn btn-light" href="/${contacts.id}/edit">Edit</a></td>
              </tr>
          </#list>
          </tbody>
      </table>
      </div>
      <a href='/new' class="btn btn-primary mt-3"><i class="fas fa-plus me-1"></i> Create new contact</a>
  </div>

</body>
</html>