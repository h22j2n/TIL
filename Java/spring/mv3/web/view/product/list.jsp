<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#main_center {
	margin: 0 20px;
	width: 760px;
	height: 480px;
	background: white;
}
td > img{
	height:110px;
}
</style>
<div id="main_center">
	<h1>Product List</h1>
	<table border="1">
	<thead>
	<tr>
		<th>���̵�</th>
		<th>�̸�</th>
		<th>����</th>
		<th>��¥</th>
		<th>����</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach var="u" items="${productlist}">
			<tr>
				<td>${u.id}</td>
				<td>${u.name}</td>
				<td>${u.price}</td>
				<td>${u.regdate}</td>
				<td><img src='img/${u.imgname}'></td>
			</tr>                                           
	</c:forEach>
	</tbody>
	</table>
</div>
