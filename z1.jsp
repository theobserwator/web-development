<html>
<head>
    <title>Hello</title>
</head>
<body>
    Hello, my dear friend!
    The current time is
    <%= new java.util.Date() %>
    <%
        for (int i=0; i<100; i++) {
            out.println(i + "<br>");
        }
    %>
</body>
</html>