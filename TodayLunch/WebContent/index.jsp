<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
//response.sendRedirect("http://localhost:8090/TodayLunch/main.lunch");
//System.out.println("main request:"+request.getContextPath());
response.sendRedirect(request.getContextPath()+"/main.lunch");
%>