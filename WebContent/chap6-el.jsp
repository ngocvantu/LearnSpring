<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
h2 {
	color: blue;
}
</style>
</head>
<body>
	<a href="index" > < Home </a>
	<h2>Chap 6: Expression language</h2>
	<div style="margin-left: 50px; font-size: 16px" >
		<h3>Basic</h3>
		<ul>
			<li>\${expr}
			<li>\\${not an EL expression}
			<li><input type="text" name="something" value="\${expr}" />
			<li>< c:url value="/something/\${expr}/\${expr}" />
			<li>< c:redirect url="\${expr}" />
			<li>\${myCollection["key"].memberName["anotherKey"]}
			<li>\${x = y + 3} với y = 4 => ra 7 
			<li>\${x = y + 3; object.callMethod(x); 'Hello, World!'} ra Hello, World!
			<li>\${'The user will see ' += expr+= " text and will " += expr+= '.'} ra ${'The user will see ' += expr+= " text and will " += expr+= '.'}
			<li>\${105.509} ra ${105.509}
			<li>\${complex.plus(12).toHtmlString()}
		</ul>
		<h3>Function</h3>
		<ul>
			<li>< %@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
			<li>\${fn:contains(String, String)}— This function tests whether the first string contains 
				one or more instances of the second string and returns true if it does.
			<li>\${fn:escapeXml(String)}
			<li>\${fn:length(Object)}
			<li>\${fn:toLowerCase(String)}
			<li>\${fn:trim(String)}
		</ul>
		<h3>Static field and method access</h3>
		<ul>
			<li>Static field: \${Integer.MAX_VALUE} or \${java.lang.Integer.MAX_VALUE}
			<li>Function: \${Integer.reverse(24)}; \${com.wrox.User('First', 'Last').firstName}
		</ul>
		<h3>Using the implicit EL Variables</h3>
		<ul>
			<li>
				< % <br>
					application.setAttribute("appAttribute", "foo");<br>
					pageContext.setAttribute("pageAttribute", "bar");<br>
					session.setAttribute("sessionAttribute", "sand");<br>
					request.setAttribute("requestAttribute", "castle");<br>
				%> <br>
				Remote Address: \${pageContext.request.remoteAddr}<br />
				Request URL: \${pageContext.request.requestURL}<br />
				Session ID: \${pageContext.request.session.id}<br />
				Application \Scope: ${applicationScope["appAttribute"]}<br />
				Page Scope: \${pageScope["pageAttribute"]}<br />
				Session Scope: \${sessionScope["sessionAttribute"]}<br />
				Request Scope: \${requestScope["requestAttribute"]}<br />
				User Parameter: \${param["user"]}<br />
				Color Multi-Param: \$ {fn:join(paramValues["colors"], ', ')}<br />
				Accept Header: \${header["Accept"]}<br />
				Session ID Cookie Value: \${cookie["JSESSIONID"].value}<br />
		</ul>
	</div>
</body>
</html>