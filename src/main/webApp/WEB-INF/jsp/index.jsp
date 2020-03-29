<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>

    <title>Inventory List</title>
    <style>

        body {

            background-color: white;

        }

        div {

            background-color: aliceblue;

        }

        table {

            border-collapse: collapse;
            font-family: "Georgia";
            text-align: left;
            width: 100%;
            padding: 15px;

        }

        table, th, td {


            border-bottom: 2px solid lightslategray;
            padding: 10px;
            column-width: 200px

        }

        th {

            background-color: slategrey;
            color: white;

        }

        tr:hover {

            background-color: aliceblue;

        }

        tr:nth-child(even) {

            background-color: ghostwhite;

        }

        h2 {

            text-shadow: 2px 2px 5px white;
            padding: 20px;
            background-color: cadetblue;
            font-variant: small-caps;
            font-size: 50px;
            border-bottom: solid 5px;
            border-bottom-color: black;

        }

        h3 {

            padding-left: 20px;



        }

    </style>
</head>
<body>
<div>

    <h2>Gnarly's Sporting Goods</h2>

    <h3>Products In-Stock</h3>

<table>
    <tr>
        <th>Description</th>
        <th>Price</th>
        <th>Color</th>
    </tr>


    <jsp:useBean id="inventory" scope="request" type="java.util.List"/>
    <c:forEach var = "invListItem" items = "${inventory}">
        <tr>

            <td>${invListItem.description}</td>
            <td>${invListItem.price}</td>
            <td>${invListItem.color}</td>

        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>
