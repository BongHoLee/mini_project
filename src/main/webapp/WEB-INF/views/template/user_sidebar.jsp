<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    
    
    
    <div class="col-sm-2 sidenav">
    <br><br>
    <a href="#section3"><strong>상품 선택</strong></a><br>

	

<button class="dropdown-btn"><strong>Category</strong> <i class="fa fa-caret-down"></i></button>
  		<div class="dropdown-container">
    		<a href="<c:url value='/proView/productView?CATE_COD=C001&page=category'/> "><strong>TOP &nbsp;&nbsp;</strong></a>
    		<a href="<c:url value='/proView/productView?CATE_COD=C002&page=category'/> "><strong>BOTTOM &nbsp;&nbsp;</strong></a>
    		<a href="<c:url value='/proView/productView?CATE_COD=C003&page=category'/> "><strong>OUTER &nbsp;&nbsp;</strong></a>
    		<a href="<c:url value='/proView/productView?CATE_COD=C004&page=category'/> "><strong>ACCESSORY &nbsp;&nbsp;</strong></a>
    		<a href="<c:url value='/proView/productView?CATE_COD=C005&page=category'/> "><strong>BAG &nbsp;&nbsp;</strong></a>
    		<a href="<c:url value='/proView/productView?CATE_COD=C006&page=category'/> "><strong>SHOES &nbsp;&nbsp;</strong></a>
  		</div>
  		<br>
 <button class="dropdown-btn"><strong>Brand</strong> <i class="fa fa-caret-down"></i></button>
	  	<div class="dropdown-container">
    		<a href="<c:url value='/proView/productView?BRAND_NUM=B001&page=brand'/> "><strong>NIKE &nbsp;&nbsp;</strong></a>
    		<a href="<c:url value='/proView/productView?BRAND_NUM=B002&page=brand'/> "><strong>ADIDAS &nbsp;&nbsp;</strong></a>
    		<a href="<c:url value='/proView/productView?BRAND_NUM=B003&page=brand'/> "><strong>NEW BALANCE &nbsp;&nbsp;</strong></a>
    		<a href="<c:url value='/proView/productView?BRAND_NUM=B004&page=brand'/> "><strong>OBEY &nbsp;&nbsp;</strong></a>
  
  		</div>
  		<br><br><br>
      
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
    
    <div class="col-sm-10">
    