<%-- 
    Document   : index
    Created on : 26/09/2018, 12:35:43
    Author     : bruno
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Language" content="pt-br">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="icon" href="img/icon.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>PetShop - Doe e Encontre seu Pet Aqui</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" crossorigin="anonymous">
    <style>
        .parallax {
            height: 100%;

            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        #index1 {
            background-image: url("img/background.jpg");
        }

        #index2 {
            background-image: url("img/background2.jpg");
        }
        #index3 {
            background-image: url("img/background3.jpg");
        }
    </style>
</head>

<body>
    <%@include file="views/navbar.jsp" %>
    <%@include file="views/home.jsp" %>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" crossorigin="anonymous"></script>
<script src="js/index.js" crossorigin="anonymous"></script>

</html>