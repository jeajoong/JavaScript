<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Java Script �⺻ ���� </title>
</head>
<body>

<button type="button" onclick="document.getElementById('demo').innerHTML = 'Hello JavaScript!'"> Click me </button> <!-- ��ư������ �ش��ϴ� �ؽ�Ʈ ���� ���� -->

<img id="myImage" src="pic_bulboff.gif" style="width:100px">
<button onclick="document.getElementById('myImage').src='pic_bulbon.gif'">Turn on</button>  <!-- ��ư�� ������ �̹��� ��ü�Ѵ�. -->
<button onclick="document.getElementById('myImage').style.display = 'none'">change</button> <!-- ��ư�� ������ ��Ÿ�ϵ� ���氡�� -->

<button type="button" onclick="myFunction()">Try it</button>          <!-- ��ư�� ������ myFunction() �Լ� ȣ�� -->
<button type="button" onclick="document.write(5 + 6)">try it</button> <!-- (����) ��ư�� ������ �ٸ� �׸� ��ΰ� �������� 11�� �������� ��µ�. -->

<button onclick = "document.getElementById('demo').innerHTML = Date()">The time is?</button> <!-- �Լ� ���� 1 -->
<button onclick = "this.innerHTML = Date()">The time is?</button>                            <!-- �Լ� ���� 2 -->
<button onclick = "displayDate()"> The time is?</button>                                     <!-- �Լ� ���� 3 -->
<!--  this => document.getElementById("�ڱ��ڽ�???") �ڹٶ� ���� ���?  -->



<script>
  document.getElementById("demo").innerHTML = "My First JavaScript";   // �̷��� ��ũ��Ʈ �ȿ� ����ϴ°� ����Ʈ // �����ݷ��� �Է��ؾ���.
  
  function myFunction() {
    document.getElementById("demo").innerHTML = "paragraph changed.";
    document.getElementById("demo").innerHTML = 5 + 6;                 // �̷������� ���� ��� ����
  }
  
  
  // �׳� ��ٷ� �������� ���� ����
  document.write(5 + 6);  // => 11�� �߰������� ȭ�鿡 ���
  window.alert(5 + 6);    // => 11�� �˸�â�� ��µ�
  console.log(5 + 6);     // => F12 Ű�� ������ �����ִ� console ������ �αװ� 11�� ���� 
  
  var x, y, z;
  x = 5;
  y = 6;
  z = x + y;
  
  var pi = 3.14; person = "John Doe"; answer = "Yse I am!";  // ������ var�� �����ϰ� ���ٷ� �ۼ� ����
  
  document.getElementById("demo").innerHTML = "The value of z is " + z + "." ; // ������ ����� �� �̷��Ե� ����. // �ֵ���ǥ Ȭ����ǥ �Ѵ� ����
  document.getElementById("demo").innerHTML = pi + "<br>" + person + "<br>" + answer; // ���ڿ� ���� ȥ���Ͽ� ������ ��� ����
  
  var x = 5;
  document.getElementById("demo").innerHTML = Math.pow(x,2); // => ����� 25 pow()�� �������� ��� (����, �ڹٿ��� ���� ������ ��� ��밡��)
  
  var x = {firstName:"John", lastName:"Doe"};    // => x�� Ÿ���� Object Ÿ��
    
  var x = 16+"Volvo";                            // ������ �Ұ����ϹǷ� "16" + "Volvo" ó��
  document.getElementById("demo").innerHTML = x; // => ��°� 16Volvo
  
  var cars = ["Saab", "Volvo", "BMW"];
  document.getElementById("demo").innerHTML = cars[0]; // => ����� Saab 
  
  document.getElementById("demo").innerHTML = 
    typeof "";     // ����� => string
    typeof "Johe"; // ����� => string
    typeof 0;      // ����� => number
    typeof 3.14;   // ����� => number
    typeof (3);    // ����� => number
  
  function myFunction(p1, p2) {             // �ڹ��� �޼��� ó�� ����� �ϴ� �Լ��� ���� �� ����.
      return p1 * p2;
  }
  document.getElementById("demo").innerHTML = myFunction(4, 3); // ����� => 12
  
  var txt = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  document.getElementById("demo").innerHTML = txt.length;  // ����� => 26
  document.getElementById("demo").innerHTML = txt.indexOf("C"); // ����� => 3 // �� �������� ���� ù��° ������ ��ġ
  document.getElementById("demo").innerHTML = txt.slice(1,5);  // ����� => ABCDE 
  document.getElementById("demo").innerHTML = txt.slice(-2, -1); //����� => Y // �����ʿ��� ���� �ڸ� (-2, 0)�� �ƹ��͵� ��� x 
  document.getElementById("demo").innerHTML = txt.replace("ABC", "������");  // ����� => ������DEFG...
  // toUpperCase(); toLowerCase(); �� ����ϸ� �빮�� �ҹ��� ����
  document.getElementById("demo").innerHTML = txt.concat(" ", "�ؽ�Ʈ");  // ����� ABC...YZ �ؽ�Ʈ // ���ڿ� ��ġ��
  document.getElementById("demo").innerHTML = txt.trim();     // ��������
  
  var str = "     Hello World!     ";
  alert(str.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g, ''));
  
  var str = "HELLO WORLD";
  str[0] = "A";  // �̰� ������ �ƴϰ� �۵������� �ʴ´�.
  str[0];        // ����� => H
  
</script>

<script src="myScript11.js"></script> <!-- �̷��� �ٸ� ���� �ִ� JS������ �ҷ��ͼ� ��� ���� -->
<script src="myScript22.js"></script>

</body>
</html>