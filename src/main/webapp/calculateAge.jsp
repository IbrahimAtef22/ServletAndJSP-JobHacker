<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.Period" %>
<%@ page import="java.time.LocalTime" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Calculate Age</title>
</head>
<body>

<%-- calculate age of user --%>
<%
    LocalDate dateOfBirth = LocalDate.parse(request.getParameter("dateOfBirth"));
    LocalDate chooseDateToCalcAge = LocalDate.parse(request.getParameter("chooseDateToCalcAge"));

    Period age = Period.between(dateOfBirth, chooseDateToCalcAge);
    int years = age.getYears();
    int months = age.getMonths();
    int days = age.getDays();

    LocalTime time = LocalTime.now();
    int hours = time.getHour();
    int minutes = time.getMinute();
    int seconds = time.getSecond();
%>

<div style="text-align: center; background-color:green; color:white; padding:1%;"><h2>Result</h2></div>
<div style="text-align: center">
    <h2>Age:</h2>
    <h4><%= years + " "%> Years</h4>
    <h4><%= months + " "%> Months</h4>
    <h4><%= days + " "%> Days</h4>
    <h4><%= hours + " "%> Hours</h4>
    <h4><%= minutes + " "%> Minutes</h4>
    <h4><%= seconds + " "%> Seconds</h4>
</div>
    <br>
</body>
</html>
