<html>
<head>
    <title>Result</title>
</head>
<body>
    <%
    int m = Integer.valueOf(request.getParameter("Month"));
    switch(m) {
        case 1 : out.println("January");break;
        case 2 : out.println("February");break;
        case 3 : out.println("March");break;
        case 4 : out.println("April");break;
        case 5 : out.println("May");break;
        case 6 : out.println("June");break;
        case 7 : out.println("July");break;
        case 8 : out.println("August");break;
        case 9 : out.println("September");break;
        case 10 : out.println("October");break;
        case 11 : out.println("November");break;
        case 12 : out.println("December");break;
        default : out.println("Error");
    }
    %>
</body>
</html>