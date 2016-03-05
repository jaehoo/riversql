<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@page import="java.util.Properties"%>
<%@page import="java.util.Enumeration"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>

<h2>Hello World!!</h2>



<%
    Properties p = System.getProperties();
    Enumeration keys = p.keys();
    while (keys.hasMoreElements()) {
    String key = (String)keys.nextElement();
    String value = (String)p.get(key);
%>
    <label><%=value%></label><br>
<%}%>
