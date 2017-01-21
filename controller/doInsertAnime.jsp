  <%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
  <%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
  <%@ page import="org.apache.commons.fileupload.*"%>
  <%@ page import="java.util.*, java.io.*" %>
  <%@ page import="java.util.Iterator"%>
  <%@ page import="java.util.List"%>
  <%@ page import="java.util.Date"%>
  <%@ page import="java.io.File"%>
   <%@ page import="java.lang.*"%>
  <%@ page contentType="text/html;charset=UTF-8" %>
  <%@ page import="javax.servlet.*,java.text.*" %>

<%@ include file="connect.jsp" %>
<%
	
	String []data = new String[100];
	String []data1 = {"","","","","","","","","","","","","images/","music/","video/"};
	
	
	int no=0;
    int i=0;
   	String patherMusic="";
   	String patherVideo="";
   	String patherPhoto="";
  	String path=application.getRealPath("/");
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    List items = null;
    FileItem item =null;

    if (isMultipart) {
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
          
        try {
        	items = upload.parseRequest(request);
        } catch (FileUploadException e) {
        	e.printStackTrace();
        }
        Iterator itr = items.iterator();
        while (itr.hasNext()) {    
		
		item = (FileItem) itr.next();
        	if (!item.isFormField()) {
                try {
                	data[i] = item.getName();  
                	File saved = new File(path+ data1[i] + data[i]);
                	item.write(saved);
				}catch (Exception e) {
			}
			i++;
            }else {
            	data[i]=item.getString();
                i++;
			}
        }
		
        patherMusic= "music/" + data[13];
		patherPhoto= "images/" + data[12];
        patherVideo= "video/" + data[14];       	
              	        
		String date = "";
		if(data[4]== null || data[5] == null || data[6] == null){
			date = null;
		}else{
			date = data[6]+"/"+data[5]+"/"+data[4];
		}
		
		
		String query="INSERT INTO msanime VALUES(null, '"+data[0]+"', '"+data[11]+"', '"+data[2]+"', "+data[1]+", "+data[3]+", '"+date+"', '"+data[7]+"', '"+data[8]+"', "+data[9]+", '"+data[10]+"', '"+ patherPhoto +"', '"+patherMusic+"', '"+patherVideo+"')";
		st.executeUpdate(query);
		response.sendRedirect("../anime.jsp");       
	}

%>