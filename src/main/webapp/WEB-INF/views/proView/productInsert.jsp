<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<div>
<div class="row">
  <div class="col-sm-8">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
      </ol>

      <!-- 상품 이미지 넣을곳 -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
         <%--  <img src="<c:url value='/resources/images/${resultMap.PROD_IMG}'/> " alt="Image"   style="width:800px; height:400px;"> --%>
         <img id="blah" src="#" alt="your image" style="width:800px; height:400px;" />
          <div class="carousel-caption">
            <h3>PRODUCT IMAGE</h3>
            <p>SHOW IMAGE</p>
          </div>      
        </div>

      </div>

      <!-- 상품 이미지 왼/오른 선택 -->
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
      
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<form id="form1" runat="server">
<label for="exampleInputFile">이미지 등록</label>
  <input type='file' id="imgInp"/>
</form>
 <script>
      function readURL(input) {

  if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function(e) {
      $('#blah').attr('src', e.target.result);
      console.log(input.files[0].name);
      $('#i_result').attr('value', input.files[0].name);
      document.getElementById("i_result").innerHTML = input.files[0].name;

    }

    reader.readAsDataURL(input.files[0]);
  }
}

$("#imgInp").change(function() {
  readURL(this);
  
  
});


</script>
  </div>
  
  <form action="<c:url value='/proView/insertResult'/> ">
  <div class="col-sm-4">
  <input type="hidden" name="PROD_IMG"  id="i_result" value="">
  <label style="color:red;">브랜드</label>
  
   <div class="form-group">
	<select name="BRAND_NUM" class="form-control">
		<option value="none">브랜드 선택</option>
		<option value="B001">NIKE</option>
		<option value="B002">ADIDAS</option>
		<option value="B003">NEW BALANCE</option>
		<option value="B004">OBEY</option>
	</select>
    </div>
    
      <label style="color:red;">카테고리</label>
  
   <div class="form-group">
	<select name="CATE_COD" class="form-control">
		<option value="none">카테고리 선택</option>
		<option value="C001">상의</option>
		<option value="C002">하의</option>
		<option value="C003">아우터</option>
		<option value="C004">악세사리</option>
		<option value="C005">가방</option>
		<option value="C006">신발</option>
	</select>
    </div>
    
    <label style="color:red;">상품명</label>
  <div class="form-group">
    <input type="text" class="form-control" name = "PROD_NAME" id="exampleInputEmail1" placeholder="상품명 입력">
  </div>

    
    <label style="color:red;">가격</label>
  <div class="form-group">
    <input type="text" class="form-control" name = "PRICE" id="exampleInputEmail1" placeholder="가격 입력">
  </div>
    
    <label style="color:red;">사이즈</label>
   <div class="form-group">
	<select name="PSIZE" class="form-control">
		<option value="none">사이즈 선택</option>
		<option value="XS">XS</option>
		<option value="S">S</option>
		<option value="M">M</option>
		<option value="L">L</option>
		<option value="XL">XL</option>
	</select>
    </div>
     <div class="form-group">
    <input class="form-control" type="submit" value="상품 추가">
    </div>
  
</div>
<hr>
<br>
</div>

  </form>