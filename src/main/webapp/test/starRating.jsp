<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="http://192.168.10.218/jsp_prj/common/favicon.ico"/>
<!--bootstrap 시작-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!--bootstrap 끝-->

<link rel="stylesheet" href="http://192.168.10.218/jsp_prj/common/css/main.css" type="text/css" media="all" />
<link rel="stylesheet" href="http://192.168.10.218/jsp_prj/common/css/board.css" type="text/css" media="all" />

<!--jQuery CDN 시작-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!--jQuery CDN 끝-->

<style type="text/css">

.rating__star {
   font-size: 1.3em;
   cursor: pointer;
   color: #dabd18b2;
   transition: filter linear .3s;
}

/* .rating__star:hover { */
/*    filter: drop-shadow(1px 1px 4px gold); */
/* } */

</style>

<script type="text/javascript">
$(function(){
	
	const ratingStars = document.querySelectorAll('.rating__star');
    const resultDiv = document.getElementById('result');

    let ratingValue = 3;//기본값 설정

//     for(let i = 0; i < ratingStars.length; i++) {
//         ratingStars[i].addEventListener('click', function() {
//             const {length} = ratingStars;
//             for(let j = 0; j < length; j++) {
//                 if(j <= i) {
//                     ratingStars[j].classList.add('fas');
//                     ratingStars[j].classList.remove('far');
//                 } else {
//                     ratingStars[j].classList.add('far');
//                     ratingStars[j].classList.remove('fas');
//                 }//end else
//             }//end for
//             ratingValue = i + 1;
//             resultDiv.textContent = ratingValue + '점';
//         });//click
//     }//end for
    
    
 // 기본값으로 3점 설정
    for(let i = 0; i < ratingValue; i++) {
       ratingStars[i].classList.add('fas');
        ratingStars[i].classList.remove('far');
    } 
});//ready

</script>

</head>
<body>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">

<div class="rating">
    <span class="rating__result"></span> 
    <i class="rating__star far fa-star"></i>
    <i class="rating__star far fa-star"></i>
    <i class="rating__star far fa-star"></i>
    <i class="rating__star far fa-star"></i>
    <i class="rating__star far fa-star"></i>
</div>
<div id="result">

</div>
</body>
</html>