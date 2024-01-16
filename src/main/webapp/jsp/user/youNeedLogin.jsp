<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모두의자격증</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500;700&family=Poppins:wght@400;600&display=swap"
        rel="stylesheet"><!--구글폰트-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/e72539902e.js" crossorigin="anonymous"></script> <!--아이콘 사용-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script> 
    
    
    
    <style>
        /* 초기화 */
        body,h1,h2,h3,div,p,ul, li,dl, dt,dd {
            margin: 0;
            padding: 0
        }

        /*바디 기본폰트설정,구글 폰트설정함*/
        body { 
            font-family: 'Poppins', 'Noto Sans KR', sans-serif;
            font-size: 14px;
            line-height: 1.5
            
        }

     

        li {
            list-style: none;
        }

        a {
            text-decoration: none;
            color: #575656;

        }

      

        /*--------header CSS 끝-----*/

        /* -------main css---------*/
        
        .main{
        width:1200px;
        height:500px; /*푸터 이동방지로 수치변경*/
        margin: auto;
       
        }
       

         /*사이드바 위치 조절 및 크기조절*/
         .sideBar{
         width: 260px;
         height:980px;
         margin-top: 15px; /*사이드바 위아래 위치설정*/
         background: #DDDDDD;
         left: 1000px;
         border-radius: 10px;
         float: left;
         }

         /*사이드바 메뉴위치조절*/
         .sideBar > ul{
            padding: 5px 0 0 0;
         }

         /*사이드바 마이페이지 타이틀*/
         .menuTitle{
            font-size:35px;
            font-weight: 600;
            color: #575656;
            margin: 25px 30px 10px 30px;
         }
         
         /*사이드바메뉴 설정*/
         .s_menu{
            font-size: 20px;
            font-weight: 700;
            color: #575656;
            margin: 10px;
            cursor: pointer;
            padding: 5px 10px 5px 20px;
         }

            /*사이드바메뉴 호버효과*/
         .s_menu:hover {
            background: #928e8e;
         }
         .s_menu a {
         	display:inline-block;
         	width:210px;
         }
         .s_menu a:hover{
         	 color: #ffffff;
         }
		
		
		
        /*본문*/
        .article {
            width: 930px;
            height: 500px;
            float: right;

        }

        /*'내정보 수정' 가운데정렬*/
        .article  span{ 
            font-size: 30px;
            display: flex;
            justify-content: center;

            
        }
        /*"개인정보변경을~" 문구 */
        .noti{
            text-align: center;
            margin-top: 80px;
            font-size: large;
            color: #575656;
        }

        .pwdCheck{
            border: solid 3px  #DDDDDD;
            border-radius: 10px;
            height: 600px;
            position: relative;

        }
        .pwdCheckBox{
            border: solid 3px  #DDDDDD;
            border-radius: 10px;
            position: absolute;
            width: 600px;
            height: 140px;
            left: 175px;
            top: 170px;
            display: flex;
            align-items: center ;
            justify-content: center;

        }
        /* 패스워드 라벨 */
        .lab{ 
        	margin:0 40px 40px 70px;
            font-size: 20px;

        }

        /*패스워드입력창*/
        input[type="password"] {
        
            font:small-caps;font-size:18px; /*입력창 동그라미설정*/
            border-radius: 7px;
            border: 1px solid #acabab;
            height: 25px;
            width: 200px;
            padding-left: 7px;  /*입력창 안쪽 여백*/
            margin:10px
            
        }
        

     
        .cancelBtn{
            position: absolute;
            width: 80px;
            height: 30px;
            bottom : 40px;
            right: 260px;
            border-radius: 10px;
            border: none;
            background :  #ED7D31;
            font-weight: 800px;
            color: #ffffff;
            cursor: pointer;
            text-align: center;
            padding:4px 0 0 0;
            letter-spacing: 3px;

        }
        .cancelBtn:hover {
            font-weight: bold;

        }
     
        .cancel2Btn{
            position: absolute;
            width: 80px;
            height: 30px;
            bottom : 40px;
            left: 260px;
            border-radius: 10px;
            border: none;
            background :  #ED7D31;
            font-weight: 800px;
            color: #ffffff;
            cursor: pointer;
            text-align: center;
            padding:4px 0 0 0;
            letter-spacing: 3px;

        }
        .cancelBtn:hover {
            font-weight: bold;

        }
        

		
		.alertbox{
		top:300p;
		margin-top : 250px;
		width: 500px;
		height:300px;
		border-radius: 7px;
		border: 5px solid #dddddd;
		position:relative;
		
		}
		
		
		
		.alert{
		font-size: 25px;
		font-weight: 700px;
		margin:0 auto;
		padding: 90px 0 0 105px		
		}
        /* -------main css끝--------*/

        

   
    </style>
    
   <script>
   
   		<!-- 경고창 띄우는 매소드-->
   		$(function(){
   		var i =	"${invalid}";
   			
   		if(i === "N" ){
   			$("#invalid").css("display","block");
   			
   		}
   			
   		});
   </script> 
</head>

<body>
   
    <main id="main" class="main">
        <article class="article" id="article">
                          <div class = alertbox>
	                          		<div class= alert >
	                          		<li>현재 비회원으로 확인됩니다.</li> 
	                          		<li>로그인하시길 바랍니다.</li>
	                          		</div>
	                            <a href ="login.do" class="cancelBtn" >로그인</a>
	                            <a href ="join.do" class="cancel2Btn" >회원가입</a>
              			</div>
        </article>
    </main>



   

</body>

</html>