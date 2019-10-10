<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mycompany.web.dto.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<h5>게시물 리스트 (전체 게시물 : ${totalNo})</h5>
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">제목</th>
      <th scope="col">글쓴이</th>
      <th scope="col">날짜</th>
      <th scope="col">조회수</th>
    </tr>
  </thead>
  <tbody>
	<c:forEach items="${boardList}" var="board">
	    <tr>
	      <th scope="row">${board.bno}</th>
	      <td>${board.btitle}</td>
	      <td>${board.writer}</td>
	      <td><fmt:formatDate value="${board.date}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
	      <td>${board.hitcount}</td>
	    </tr>
	 </c:forEach>
  </tbody>
</table>