<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="utf-8">
  <head>
  <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>  
  <script>
  
  $(function(){
	  $.each(${sCate},function(){
			var option = $("<option></option>").html(this);
			$(option).attr("select",this);
			$("#sCate").append(option);
		})	  
	  $.each(${bCate},function(){
			var option = $("<option></option>").html(this);
			$(option).attr("select",this);
			$("#bCate").append(option);
		})	  
  })
 
  </script>
  
  <style>
  #search{
  	margin-top:50px;
  	background-color: #e9ecef
  }
  .img-fluid{
  	width:200px;
  	heigh:200px;
  }
  </style>
  
  
    <title>모두의 자격증</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    
    <link rel="stylesheet" href="../../css/custom-bs.css">
    <link rel="stylesheet" href="../../css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="../../css/bootstrap-select.min.css">
    <link rel="stylesheet" href="../../fonts/icomoon/style.css">
    <link rel="stylesheet" href="../../fonts/line-icons/style.css">
    <link rel="stylesheet" href="../../css/owl.carousel.min.css">
    <link rel="stylesheet" href="../../css/animate.min.css">
    <link rel="stylesheet" href="../../css/quill.snow.css">
    

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/examstyle.css">    
  </head>
  <body id="top">

  <div id="overlayer"></div>

    
    <!-- HOME -->
  <section class="section-hero home-section overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');" id="home-section">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-12" id="search">
            <div class="mb-5 text-center" >
              <h1 class="text-black font-weight-bold" font-color="black">자격증 정보검색은 모두의 자격증!</h1>
              <p>모두의 자격증에서 자격증 정보를 쉽게 찾아가세요!</p>
            </div>
            <form method="post" class="search-jobs-form">
              <div class="row mb-5">
                
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                  <select class="selectpicker" data-style="btn-white btn-lg" id="bCate" data-width="100%" data-live-search="true" title="카테고리">

                  </select>
                </div>
				<div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                  <input type="text" class="form-control form-control-lg" placeholder="자격증명">
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                  <button type="submit" class="btn btn-primary btn-lg btn-block text-white btn-search"><span class="icon-search icon mr-2"></span>자격증 검색</button>
                </div>
              </div>
             
            </form>
          </div>
        </div>
      </div>

      <a href="#next" class="scroll-button smoothscroll">
        <span class=" icon-keyboard_arrow_down"></span>
      </a>
    </section>

    
    <section class="site-section" id="next">
      <div class="container">

        
        <c:forEach items="${list}" var="list">
        <ul class="job-listings mb-5">
          <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
            <a href="job-single.html"></a>
            <div class="job-listing-logo">
              <img src="../../image/${list.img }" alt="Image" class="img-fluid">
            </div>

            <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
              <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
                <h2>${list.jmfldnm }</h2>
                <strong>${list.qualgbnm}</strong>
              </div>
              <div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
                 ${list.mdobligfldnmm}
              </div>
              <div class="job-listing-meta">
                <button>상세보기</button>
              </div>
            </div>
            
          </li>         
          
        </ul>
        </c:forEach>

        <div class="row pagination-wrap">

          <div class="col-md-6 text-center text-md-right">
            <div class="custom-pagination ml-auto">
         
              <div class="d-inline-block">
			            <c:set var="currentPage" value="${param.pageNUM ne null ? param.pageNUM : 1}" />
<c:if test="${currentPage > 1}">
  <a href="examSearch.do?pageNUM=${currentPage - 1}">&lt;</a>
</c:if>

<c:forEach var="i" begin="1" end="${totalPage}" varStatus="loop">
  <c:if test="${loop.index <= 5}">
    <c:choose>
      <c:when test="${loop.index == currentPage}">
        <span>${loop.index}&nbsp;</span>
      </c:when>
      <c:otherwise>
        <a href="examSearch.do?pageNUM=${loop.index}">${loop.index}&nbsp;</a>
      </c:otherwise>
    </c:choose>
  </c:if>
</c:forEach>

<c:if test="${currentPage < totalPage}">
  <a href="examSearch.do?pageNUM=${currentPage + 1}">&gt;</a>
</c:if>
              </div>
         
            </div>
          </div>
        </div>

      </div>
    </section>


    
    
   
  </div>

    <!-- SCRIPTS -->
    <script src="../../js/jquery.min.js"></script>
    <script src="../../js/bootstrap.bundle.min.js"></script>
    <script src="../../js/isotope.pkgd.min.js"></script>
    <script src="../../js/stickyfill.min.js"></script>
    <script src="../../js/jquery.fancybox.min.js"></script>
    <script src="../../js/jquery.easing.1.3.js"></script>
    
    <script src="../../js/jquery.waypoints.min.js"></script>
    <script src="../../js/jquery.animateNumber.min.js"></script>
    <script src="../../js/owl.carousel.min.js"></script>
    <script src="../../js/quill.min.js"></script>
    
    
    <script src="../../js/bootstrap-select.min.js"></script>
    
    <script src="../../js/custom.js"></script>
   
   
     
  </body>
</html>