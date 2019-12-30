<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Java Script 기본 예제 </title>
</head>
<body>

<button type="button" onclick="document.getElementById('demo').innerHTML = 'Hello JavaScript!'"> Click me </button> <!-- 버튼누르면 해당하는 텍스트 문자 변경 -->

<img id="myImage" src="pic_bulboff.gif" style="width:100px">
<button onclick="document.getElementById('myImage').src='pic_bulbon.gif'">Turn on</button>  <!-- 버튼을 누르면 이미지 교체한다. -->
<button onclick="document.getElementById('myImage').style.display = 'none'">change</button> <!-- 버튼을 누르면 스타일도 변경가능 -->

<button type="button" onclick="myFunction()">Try it</button>          <!-- 버튼을 누르면 myFunction() 함수 호출 -->
<button type="button" onclick="document.write(5 + 6)">try it</button> <!-- (주의) 버튼을 누르면 다른 항목 모두가 지워지고 11만 페이지에 출력됨. -->

<button onclick = "document.getElementById('demo').innerHTML = Date()">The time is?</button> <!-- 함수 사용법 1 -->
<button onclick = "this.innerHTML = Date()">The time is?</button>                            <!-- 함수 사용법 2 -->
<button onclick = "displayDate()"> The time is?</button>                                     <!-- 함수 사용법 3 -->
<!--  this => document.getElementById("자기자신???") 자바랑 같은 기능?  -->



<script>
  document.getElementById("demo").innerHTML = "My First JavaScript";   // 이렇게 스크립트 안에 사용하는게 베스트 // 세미콜론을 입력해야함.
  
  function myFunction() {
    document.getElementById("demo").innerHTML = "paragraph changed.";
    document.getElementById("demo").innerHTML = 5 + 6;                 // 이런식으로 숫자 사용 가능
  }
  
  
  // 그냥 곧바로 페이지에 쓰기 가능
  document.write(5 + 6);  // => 11이 추가적으로 화면에 출력
  window.alert(5 + 6);    // => 11이 알림창에 출력됨
  console.log(5 + 6);     // => F12 키를 누르면 볼수있는 console 구역에 로그가 11로 찍힘 
  
  var x, y, z;
  x = 5;
  y = 6;
  z = x + y;
  
  var pi = 3.14; person = "John Doe"; answer = "Yse I am!";  // 각각의 var를 생략하고 한줄로 작성 가능
  
  document.getElementById("demo").innerHTML = "The value of z is " + z + "." ; // 문장을 출력할 때 이렇게도 가능. // 쌍따옴표 홑따옴표 둘다 가능
  document.getElementById("demo").innerHTML = pi + "<br>" + person + "<br>" + answer; // 숫자와 문자 혼합하여 공간에 출력 가능
  
  var x = 5;
  document.getElementById("demo").innerHTML = Math.pow(x,2); // => 결과값 25 pow()는 제곱값을 출력 (또한, 자바에서 쓰는 연산자 모두 사용가능)
  
  var x = {firstName:"John", lastName:"Doe"};    // => x의 타입은 Object 타입
    
  var x = 16+"Volvo";                            // 연산이 불가능하므로 "16" + "Volvo" 처리
  document.getElementById("demo").innerHTML = x; // => 출력값 16Volvo
  
  var cars = ["Saab", "Volvo", "BMW"];
  document.getElementById("demo").innerHTML = cars[0]; // => 결과값 Saab 
  
  document.getElementById("demo").innerHTML = 
    typeof "";     // 결과값 => string
    typeof "Johe"; // 결과값 => string
    typeof 0;      // 결과값 => number
    typeof 3.14;   // 결과값 => number
    typeof (3);    // 결과값 => number
  
  function myFunction(p1, p2) {             // 자바의 메서드 처럼 기능을 하는 함수를 만들 수 있음.
      return p1 * p2;
  }
  document.getElementById("demo").innerHTML = myFunction(4, 3); // 결과값 => 12
  
  var txt = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  document.getElementById("demo").innerHTML = txt.length;  // 결과값 => 26
  document.getElementById("demo").innerHTML = txt.indexOf("C"); // 결과값 => 3 // 맨 왼쪽으로 부터 첫번째 글자의 위치
  document.getElementById("demo").innerHTML = txt.slice(1,5);  // 결과값 => ABCDE 
  document.getElementById("demo").innerHTML = txt.slice(-2, -1); //결과값 => Y // 오른쪽에서 부터 자름 (-2, 0)는 아무것도 출력 x 
  document.getElementById("demo").innerHTML = txt.replace("ABC", "하하하");  // 결과값 => 하하하DEFG...
  // toUpperCase(); toLowerCase(); 를 사용하면 대문자 소문자 가능
  document.getElementById("demo").innerHTML = txt.concat(" ", "텍스트");  // 결과값 ABC...YZ 텍스트 // 문자열 합치기
  document.getElementById("demo").innerHTML = txt.trim();     // 공백제거
  
  var str = "     Hello World!     ";
  alert(str.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g, ''));
  
  var str = "HELLO WORLD";
  str[0] = "A";  // 이건 에러도 아니고 작동하지도 않는다.
  str[0];        // 결과값 => H
  
</script>

<script src="myScript11.js"></script> <!-- 이렇게 다른 곳에 있는 JS파일을 불러와서 사용 가능 -->
<script src="myScript22.js"></script>

</body>
</html>