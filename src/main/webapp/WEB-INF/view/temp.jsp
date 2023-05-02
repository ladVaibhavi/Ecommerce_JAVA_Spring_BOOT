<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="js/Jquery.min.js"></script>
</head>
<body>
<script>
  $(document).ready(function() {
    $.ajax({
        url: "http://localhost:8080/temp1"
    }).then(function(result) {
    	console.log(result)
       $('.greeting-id').append(result);
       $('.greeting-content').append(result);
    });
});
  </script>
 <p class="greeting-id">The ID is </p>
            <p class="greeting-content">The content is </p>
</body>
</html>