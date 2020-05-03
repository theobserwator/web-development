<html>
<head>
    <title>Result</title>
</head>
<body>
    <%
    java.util.HashMap names = new java.util.HashMap();
    names.put("iv123","Sergey Ivanov");
    names.put("super","Vasily Petrov");
    names.put("john","Eugene Sidorov");
    String name = request.getParameter("name");
    if (names.containsKey(name)) {
        out.println("Hello, " + names.get(name));
    } else {
        out.println("Ivalid user!");
    }
    %>
</body>
</html>