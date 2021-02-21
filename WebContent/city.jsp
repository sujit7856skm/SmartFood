
       <%
             String state=request.getParameter("state");
       		 
             String c1[]={"Red Fort","Chandni Chowk","Laxmi Nagar","New Ashok Nagar","Nangloi","Rajeev Chowk","Ito","Indraprasth","Carol Bagh"};
             String c2[]={"Sector 1","Sector 2","New Ashok Nagar","Sector 15","Sector 16","Sector 62","Sector 63","Botanical","Sector 18(Atta)"};
             String c3[]={"Alpha1","Alpha2","Beta1","Beta2","Parichowk","Jagat farm","Rampur"};
             String c4[]={"DLF","CyberCity","ABC"};
               
             out.println("<option>"+"Select city"+"</option>");
             if(state.trim().equalsIgnoreCase("Delhi"))
             {
            	 for(String c:c1)
            	 {
            		 out.println("<option>"+c+"</option>");
            		
            	 }
             }
             else if(state.trim().equalsIgnoreCase("Noida"))
             {
            	 for(String c:c2)
            	 {
            		 out.println("<option>"+c+"</option>");
            	 }
             }
             else if(state.trim().equalsIgnoreCase("Greater Noida"))
             {
            	 for(String c:c3)
            	 {
            		 out.println("<option>"+c+"</option>");
            	 }
             }
             else if(state.trim().equalsIgnoreCase("Gurugram"))
             {
            	 for(String c:c4)
            	 {
            		 out.println("<option>"+c+"</option>");
            	 }
             }
             
              else
             {
            	 out.println("<option>First select State</option>");
             }
            
       %>
       
  
   