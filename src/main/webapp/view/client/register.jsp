
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/view/client" var="url" />

<!-- Start header section -->
<jsp:include page="./header/header.jsp" flush="true" />
<!-- / header section -->
<!--  content -->
<section class="bg0 p-t-104 p-b-116">
	<div class="container">
		<div class="flex-c-m ">
			<div
				class="size-208 bor10 p-lr-20 p-t-20 p-b-20 p-lr-10-lg w-full-md">
				
				<form name="formRegister"  method="post" action="${pageContext.request.contextPath}/view/client/register">
					<h4 class="mtext-105 cl2 txt-center p-b-30">SIGN UP</h4>
					
                    <label for="">Full name<span>*</span></label>
                    <div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
							type="text"  name="name" required>
					</div>
                    
                     <label for="">Email <span>*</span></label>
                     <div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
							type="text" placeholder="useremail@gmail.com" name="email" required>
					</div>
                    
                    <label for="">Phone number<span>*</span></label>
                    <div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
							type="text"  name="phone">
					</div>
                    
                     <label for="">Username<span>*</span></label>
                     <div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
							type="text" placeholder="Username" name="username" required>
					</div>
                  
                    <label for="">Password<span>*</span></label> 
                    <div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
							type="password" placeholder="Password" name="password" required>
					</div> 
                      
                    <input type="date" style="display: none" placeholder="Password" name="created" id="the-date">             
                      
                    <p style="color:red; display: block;"><%=(request.getAttribute("errMessage") == null) ? ""
        			: request.getAttribute("errMessage")%></p>
			        <p style="color:red; display: block;"><%=(request.getAttribute("Message") == null) ? ""
			        : request.getAttribute("Message")%></p>      
			        
                      <button type="submit" class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">Register</button>                         
                  </form>
			</div>
		</div>
	</div>
</section>





<!--  end content-->
<script>
	var date = new Date();

	var day = date.getDate();
	var month = date.getMonth() + 1;
	var year = date.getFullYear();

	if (month < 10)
		month = "0" + month;
	if (day < 10)
		day = "0" + day;

	var today = year + "-" + month + "-" + day;

	document.getElementById('the-date').value = today;
</script>
<!--  footer-->
<jsp:include page="./footer/footer.jsp" flush="true" />
<!-- end footer-->


