<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>

<%
    
    // Store all form data in Key, Value format 
    Map<String, String> data = new HashMap<String, String>();
    
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    
    if (isMultipart) {
    
        DiskFileItemFactory factory = new DiskFileItemFactory();
        
        ServletFileUpload upload = new ServletFileUpload(factory);

        try {
        
            List<FileItem> fileItems = upload.parseRequest(request);
            int i=0;
            for (FileItem item : fileItems) {
            
                if (!item.isFormField()) {
                
                    String fileName = new File(item.getName()).getName();
                    String filePath = "/Users/manibhadrasingh/NetBeansProjects/CrudApplication/src/main/webapp/uploads/" + fileName;
                    item.write(new File(filePath));
                    
                    data.put( item.getFieldName(), item.getName() );
                    
                }
                else
                {
                    data.put( item.getFieldName(), item.getString() );
                }
                
                
            }

//            out.println("File(s) uploaded successfully! <br/> ");
            
        } 
        catch (Exception e) {
            out.println("File upload failed: " + e.getMessage());
        }
    }
    
//    out.print("<br/>");
//    
//    out.print(data.get("photo"));

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root","");
        Statement st=con.createStatement();
        String sql = "insert into datawithfile (name,email,password,mobile,photo) values ('"+data.get("name") +"','"+data.get("email") +"','"+data.get("password") +"','"+data.get("mobile") +"','"+data.get("photo") +"')";
        
        int result = st.executeUpdate(sql);
        if(result > 0 ){
//        out.print("data inserted successfully");
            response.sendRedirect("displayfile.jsp");

        
    }
    else{
            out.print("something went wrong");
    }
%>
