<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Form</title>
    <style>
        div{
            float:left;
        }
    </style>
</head>


<body>
<div>
    <h1>학생 정보 입력</h1>

    <h2>이름</h2>
    <form method="post" action="form_ok.jsp">
        <label for="fname">First name:</label><br>
        <input type="text" id="fname" name="fname" placeholder="성"><br>
        <label for="lname">Last name:</label><br>
        <input type="text" id="lname" name="lname" placeholder="이름">



        <h2>성별</h2>
        <input type="radio" id="남자" name="gender" value="남자">
        <label for="남자">남자</label>
        <input type="radio" id="여자" name="gender" value="여자">
        <label for="여자">여자</label>


        <h2>선택 항목</h2>
        <input type="checkbox" id="tablet" name="tablet" value="태블릿을 가지고 있어요">
        <label for="tablet"> 나는 태블릿PC를 가지고 있다</label><br>
        <input type="checkbox" id="carlicense" name="carlicense" value="운전면허를 가지고 있어요">
        <label for="carlicense"> 나는 운전면허를 가지고 있다</label><br>
        <input type="checkbox" id="toreta" name="toreta" value="토레타를 좋아해요">
        <label for="toreta"> 나는 토레타를 좋아한다</label><br><br>


        <h2>거주 지역</h2>
        <select name="city">
            <option value="서울">서울</option>
            <option value="경기도">경기도</option>
            <option value="전라도">전라도</option>
            <option value="경상도">경상도</option>
            <option value="충청도">충청도</option>
            <option value="제주도">제주도</option>
            <option value="강원도">강원도</option>
        </select>

        <h2>생일 입력</h2>
        <label for="birthday">Birthday:</label>
        <input type="date" id="birthday" name="birthday">


        <h3>RC</h3>
        <select name="rc">
            <option value="카이퍼">카이퍼</option>
            <option value="토레이">토레이</option>
            <option value="손앙원">손앙원</option>
            <option value="장기려">장기려</option>
            <option value="열송">열송</option>
            <option value="카마이클">카마이</option>

        </select>



        <h2>좋아하는 색깔</h2>
        <input type='color' name='color' value='#ff0000'>

        <h2>전공</h2>
        <select name="major">
            <option value="경영경제학부">경영경제학부</option>
            <option value="국제어문학부">국제어문학부</option>
            <option value="글로벌리더십학부">글로벌리더십학부</option>
            <option value="법학부">법학부</option>
            <option value="커뮤니케이션학부">커뮤니케이션학부</option>
            <option value="공간환경시스템공학부">공간환경시스템공학부</option>
            <option value="기계제어공학부">기계제어공학부</option>
            <option value="콘텐츠융합디자인학부">콘텐츠융합디자인학부</option>
            <option value="생명과학부">생명과학부</option>
            <option value="전산전자공학부">전산전자공학부</option>
            <option value="상담심리사회복지학부">상담심리사회복지학부</option>
            <option value="ICT창업학부">ICT창업학부</option>
        </select>

        <h2>아이디 및 비밀번호</h2>
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username"><br>
        <label for="pwd">Password:</label><br>
        <input type="password" id="pwd" name="pwd"><br><br>
        <h2>현재 기분</h2>
        <label for="quantity">Quantity (between 1 and 10):</label>
        <input type="number" id="quantity" name="quantity" min="1" max="10">
        <input type="submit" value="Submit">
        <br/>
        <input type="checkbox" id="gridCheck" name="isCheck" value="1">
        Check me out

    </form>
</div>
</body>
</html>