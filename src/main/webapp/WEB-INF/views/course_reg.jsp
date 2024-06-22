<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
       <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="<c:url value="/resources/css/test.css" />" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    
        <title>Top Menu MNU001</title>
</head>

<body>
    <div id="testheader">
        <div class="container">
            <div class=row>        
                <div class="col-md-5 ">
            <a href="home"><h3>Student Registration</h3></a>
        </div>  
        <div class="col-md-6">
            <p>User: ${loginedUser.id}  ${loginedUser.username} ${loginedUser.role}</p>
            <p>Current Date : <%= new java.util.Date() %> </p>
        </div>  
        <div class="col-md-1" >
        
            <button class="btn-basic" id="lgnout-button"><a href="/Student/logOut">Logout</a></button>
       
        </div>   
    </div>
</div>

</div>
    <!-- <div id="testsidebar">Hello World </div> -->
    <div class="sidenav">
        
        <button class="dropdown-btn" > Class Management <i class="fa fa-caret-down"></i></button>
        
            <div class="dropdown-container">
          <a href="/Student/preAddCourse">Course Registration </a>
         
          	<a href="/Student/StudentRegistration">Student Registration </a>
        
          <a href="/Student/SearchStudent">Student Search </a>
      
       	 </div>
       	 	 <c:if test="${loginedUser.role=='Admin'}">
     		   <a href="USR001.html">Users Management</a>
     		 </c:if>
    	 </div>
      
      <div class="main_contents">
    <div id="sub_content">
    <c:if test="${not empty result_msg}">
        <div >${result_msg}<a href="/Student/preAddCourse">Continue</a></div>
        </c:if>
    <form:form action="addCourse" method="post" modelAttribute="course">

        <h2 class="col-md-6 offset-md-2 mb-5 mt-4">Course Registration</h2>
       
        <div class="row mb-4">
            <div class="col-md-2"></div>
            <form:label path="id" class="col-md-2 col-form-label"> ID</form:label>
            <div class="col-md-4">
                <form:input type="text" class="form-control" path="id"/>
                <form:errors path="id" cssClass="error"/>
                
            </div>
        </div>

        <div class="row mb-4">
            <div class="col-md-2"></div>
            <form:label path="course_name" class="col-md-2 col-form-label">Name</form:label>
            <div class="col-md-4">
                <form:input type="text" class="form-control" path="course_name" placehoder="Course Name"/>
                <form:errors path="course_name" cssClass="error"/>
            </div>
        </div>
      
       
        <div class="row mb-4">
            <div class="col-md-4"></div>

            <div class="col-md-6">
               

                <button type="submit" class="btn btn-secondary col-md-2" data-bs-toggle="modal" data-bs-target="#exampleModal">Add</button>
               

        </div>
        </div>
        </form:form>
         
       <!-- <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Course Registration</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <h5 style="color: rgb(127, 209, 131);">${result_msg}</h5>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-success col-md-2" data-bs-dismiss="modal"><a href="/Student/preAddCourse"></a>Ok</button>
                               
                            </div>
                        </div>
                    </div>
            </div> -->
       
    </div>
</div>
        <div id="testfooter">
            <span>Copyright &#169; ACE Inspiration 2022</span>
        </div>
        <script>
            /* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
            var dropdown = document.getElementsByClassName("dropdown-btn");
            var i;
            
            for (i = 0; i < dropdown.length; i++) {
              dropdown[i].addEventListener("click", function() {
              this.classList.toggle("active");
              var dropdownContent = this.nextElementSibling;
              if (dropdownContent.style.display === "block") {
              dropdownContent.style.display = "none";
              } else {
              dropdownContent.style.display = "block";
              }
              });
            }
            </script>
</body>

</html>