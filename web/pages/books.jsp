<%@page import="java.util.ArrayList"%>
<%@page import="beans.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@include file="../WEB-INF/jspf/left_menu.jspf" %>

<%request.setCharacterEncoding("UTF-8");

  long genreId = 0L;

  try {
    genreId = Long.valueOf(request.getParameter("genre_id"));
  } catch (Exception ex) {
    ex.printStackTrace();
  }

%>

<jsp:useBean id="bookList" class="beans.BookList" scope="page"/>



<div class="book_list">
  <h3>${param.name}</h3>


  <%
    ArrayList<Book> list = bookList.getBooksByGenre(genreId);
    session.setAttribute("currentBookList", list);
    for (Book book : list) {

  %>

  <div class="book_info">
    <div class="book_title">
      <p> <%=book.getName()%></p>
    </div>
    <div class="book_image">
      <img src="<%=request.getContextPath()%>/ShowImage?index=<%=list.indexOf(book) %>" height="250" width="190" alt="РћР±Р»РѕР¶РєР°"/>
    </div>
    <div class="book_details">
      <br><strong>ISBN:</strong> <%=book.getIsbn()%>
      <br><strong>РР·РґР°С‚РµР»СЊСЃС‚РІРѕ:</strong> <%=book.getPublisher() %>

      <br><strong>РљРѕР»РёС‡РµСЃС‚РІРѕ СЃС‚СЂР°РЅРёС†:</strong> <%=book.getPageCount() %>
      <br><strong>Р“РѕРґ РёР·РґР°РЅРёСЏ:</strong> <%=book.getPublishDate() %>
      <br><strong>РђРІС‚РѕСЂ:</strong> <%=book.getAuthor() %>
      <p style="margin:10px;"> <a href="#">Р§РёС‚Р°С‚СЊ</a></p>
    </div>
  </div>


  <%}%>



</div>
