<%@page contentType="text/html; charset=EUC-KR" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.*,java.io.*"%>
<%
   
   	/* String saveFolder = application.getRealPath("/filestorage") ; */
   	String saveFolder ="C:/apache-tomcat-8.5.50/webapps/ROOT/file";
   	
    String encType = "EUC-KR";
    int maxSize = 5 * 1024 * 1024;
    
    try {
        MultipartRequest multi = null;
        multi = new MultipartRequest(request, saveFolder, maxSize,
                encType, new DefaultFileRenamePolicy());
        String user = multi.getParameter("user");
        String title = multi.getParameter("title");
        
        
        out.println("saveFolder: " + saveFolder + "<br/>");
        out.println("user: " + user + "<br/>");
        out.println("title: " + title + "<br/>");
        out.println("<hr>");
        
        String fileName = multi.getFilesystemName("uploadFile");
        String original = multi.getOriginalFileName("uploadFile");
        String type = multi.getContentType("uploadFile");
        File f = multi.getFile("uploadFile");
        
    
    } catch (IOException ioe) {
        System.out.println(ioe);
    } catch (Exception ex) {
        System.out.println(ex);
    }
%>
