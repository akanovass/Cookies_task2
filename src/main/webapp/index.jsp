<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@include file="vector/bootstrap0.jsp"%>
</head>
<body>
 <%
     Cookie cookies[] = request.getCookies();
     String name="";
     String surname="";
     int age=0;
     String country="";
     String gender=null;
     String creditCard="";
     if(cookies!=null){
         for(Cookie c: cookies){
             if(c.getName().equals("name")){
                 name=c.getValue();
             }
             else if(c.getName().equals("surname")){
                 surname=c.getValue();
             }
             else if(c.getName().equals("age")){
                 age=Integer.parseInt(c.getValue());
             }
             else if(c.getName().equals("country")){
                 country = c.getValue();
             }
             else if(c.getName().equals("gender")){
                 gender = c.getValue();
             }
             else if(c.getName().equals("creditCard")){
                 creditCard=c.getValue();
             }
         }
     }
 %>
    <div class="container">
        <div class="row mt-3">
            <div class="col-6 mx-auto">
                <form action="/home" method="post">
                    <div class="row mt-3">
                        <div class="col-6"><span>Name:</span></div>
                        <div class="col-6"><input type="text" name="name" class="form-control"  value="<%=name%>"></div>
                    </div>
                    <div class="row mt-3" >
                        <div class="col-6"><span>Surname:</span></div>
                        <div class="col-6"><input type="text" name="surname" class="form-control" value="<%=surname%>"></div>
                    </div>
                    <div class="row mt-3" >
                        <div class="col-6"><span>Age:</span></div>
                        <div class="col-6"><select name="age">
                        <%
                            for(int i=10;i<120;i++){

                        %>
                        <option <%if(age==i){%> selected <%}%>><%=i%></option>
                        <%
                            }
                        %>
                        </select></div>
                    </div>
                    <div class="row mt-3" >
                        <div class="col-6"><span>Country:</span></div>
                        <div class="col-6"><select name="country"  >
                            <option <%if(country.equals("Kazakhstan")){%> selected <%}%>>Kazakhstan</option>
                            <option <%if(country.equals("Russia")){%> selected <%}%>>Russia</option>
                            <option <%if(country.equals("USA")){%> selected <%}%>>USA</option>
                            <option <%if(country.equals("China")){%> selected <%}%>>China</option>
                        </select></div>
                    </div>
                    <div class="row mt-3" >
                        <div class="col-6"><span>Gender:</span></div>
                        <div class="col-6">
                            <label>Male</label>
                            <input type="radio" name="gender" value="male"
                                <%if("male".equals(gender) ){%> checked <%}%>>
                            <label>Female</label>
                            <input type="radio" name="gender" value="female"
                                <%if("female".equals(gender) ){%> checked <%}%>></div>
                    </div>
                    <div class="row mt-3 " >
                        <div class="col-6"><span>Credit Card:</span></div>
                        <div class="col-6"><input type="text" name="creditCard" class="form-control" value="<%=creditCard%>"></div>
                    </div>
                    <div class="row mt-3 " >
                        <div class="col-12"><button class="btn btn-success">SAVE</button></div>
                        <div class="col-12"></div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>