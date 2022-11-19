<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">

</head>
<body class="bg-light">

<div class="container">
    <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="https://upload.wikimedia.org/wikipedia/commons/0/09/HGU-Emblem-eng2.png"
             alt="" width="100" height="100">
        <h2 class="mb-3">한동대학교 학생 정보 입력 Form</h2>
        <p class="lead">본인의 이름, 학번, 소속 학부와 RC는 필수로 입력하셔야 합니다.</p>
    </div>
    <div class="container px-6">
        <div class="row g-5">
            <div class="col-md-5 col-lg-4 order-md-last">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-primary">RC별 로고</span>
                </h4>
                <ul class="list-group mb-3">
                    <li class="list-group-item d-flex justify-content-between lh-sm">
                        <div>
                            <h3 class="my-0">토레이RC</h3>
                        </div>
                        <img class="" src="https://admissions.handong.edu/site/handong-adm/res/img/sub_torrey01.png"
                             alt="" width="50" height="50">
                    </li>
                    <li class="list-group-item d-flex justify-content-between lh-sm">
                        <div>
                            <h3 class="my-0">카이퍼RC</h3>
                        </div>
                        <img class="" src="https://admissions.handong.edu/site/handong-adm/res/img/sub_kuyper01.png"
                             alt="" width="50" height="50">
                    </li>
                    <li class="list-group-item d-flex justify-content-between lh-sm">
                        <div>
                            <h3 class="my-0">손양원RC</h3>
                        </div>
                        <img class="" src="https://admissions.handong.edu/site/handong-adm/res/img/sub_sonyw01.png"
                             alt="" width="50" height="50">
                    </li>
                    <li class="list-group-item d-flex justify-content-between bg-light">
                        <div>
                            <h3 class="my-0">열송학사RC</h3>
                        </div>
                        <img class=""
                             src="https://admissions.handong.edu/site/handong-adm/res/img/sub_philadelphos01.png" alt=""
                             width="50" height="50">
                    </li>
                    <li class="list-group-item d-flex justify-content-between bg-light">
                        <div>
                            <h3 class="my-0">장기려RC</h3>
                        </div>
                        <img class="" src="https://admissions.handong.edu/site/handong-adm/res/img/sub_janggr01.png"
                             alt="" width="50" height="50">
                    </li>
                    <li class="list-group-item d-flex justify-content-between bg-light">
                        <div>
                            <h3 class="my-0">카마이클RC</h3>
                        </div>
                        <img class="" src="https://admissions.handong.edu/site/handong-adm/res/img/sub_carmichael01.png"
                             alt="" width="50" height="50">
                    </li>
                </ul>
            </div>
            <div class="px-6 col-lg-8">
                <h3 class="mb-3">사용자 정보 입력</h3>
                <form class="needs-validation" name="form1" action="addpost.jsp" onsubmit="return validateForm()"
                      method="post" enctype="multipart/form-data">
                    <div class="row-g3">
                        <div class="col-sm-6">
                            <label for="fname" class="form-label">이름:</label>
                            <input type="text" class="form-control" id="fname" name="studentName">
                            <br>
                        </div>
                        <div class="col-12">
                            <label for="gender1" class="form-label">성별:</label>
                            <input type="checkbox" class="form-check-input" id="gender1" name="gender" value="남"
                                   checked>남성
                            <input type="checkbox" class="form-check-input" id="gender2" name="gender" value="여">여성
                        </div>
                        <br>
                        <div class="col-sm-6">
                            <label for="number" class="form-label">학번:</label>
                            <input type="text" class="form-control" id="number" name="studentID"
                                   placeholder="ex)2xx00xxx">
                        </div>
                    </div>
                    <div class="my-3">
                        <label for="class1" class="form-label">학년:</label>
                        <label class="list-group-item d-flex gap-2">
                            <input class="form-check-input flex-shrink-0" type="radio" id="class1" name="clas"
                                   value="1학년" checked>
                            <span>1학년</span>
                        </label>
                        <label class="list-group-item d-flex gap-2">
                            <input class="form-check-input flex-shrink-0" type="radio" id="class2" name="clas"
                                   value="2학년">
                            <span>2학년</span>
                        </label>
                        <label class="list-group-item d-flex gap-2">
                            <input class="form-check-input flex-shrink-0" type="radio" id="class3" name="clas"
                                   value="3학년">
                            <span>3학년</span>
                        </label>
                        <label class="list-group-item d-flex gap-2">
                            <input class="form-check-input flex-shrink-0" type="radio" id="class4" name="clas"
                                   value="4학년">
                            <span>4학년</span>
                        </label>
                    </div>
                    <div class="col-sm-6">
                        <label for="major" class="form-label">학부:</label>
                        <select class="form-select" id="major" name="major">
                            <option value="">선택</option>
                            <option value="글로벌리더십">글로벌리더십</option>
                            <option value="국제어문">국제어문</option>
                            <option value="경영경제">경영경제</option>
                            <option value="공간환경시스템">공간환경시스템</option>
                            <option value="법학부">법학부</option>
                            <option value="상담복지">상담복지</option>
                            <option value="생명과학">생명과학</option>
                            <option value="전산전자">전산전자</option>
                            <option value="기계제어">기계제어</option>
                            <option value="ICT창업">ICT창업</option>
                        </select> <br>
                    </div>
                    <div class="col-sm-6">
                        <label for="coll" class="form-label">소속 RC:</label>
                        <select class="form-select" id="coll" name="RC">
                            <option value="">선택</option>
                            <option value="토레이">토레이</option>
                            <option value="카이퍼">카이퍼</option>
                            <option value="열송학사">열송학사</option>
                            <option value="장기려">장기려</option>
                            <option value="카마이클">카마이클</option>
                            <option value="카마이클">손양원</option>
                        </select> <br>
                    </div>
                    <div class="col-sm-6">
                        <label class="form-label" for="dorm1">기숙사 거주 여부: </label>
                        <input class="form-check-input" type="checkbox" id="dorm1" name="dorm" value="기숙사" checked>기숙사거주
                        <input class="form-check-input" type="checkbox" id="dorm2" name="dorm" value="외부">외부거주
                        <br>
                    </div>
                    <br>
                    <div class="col-sm-6">
                        <label class="form-label" for="team1">팀모임 필수 여부: </label>
                        <input class="form-check-input" type="checkbox" id="team1" name="team" value="필수" checked>O
                        <input class="form-check-input" type="checkbox" id="team2" name="team" value="필수 아님">X
                        <br><br>
                    </div>
                    <div class="col-sm-6">
                        <label class="form-label" for="date">생년월일: </label>
                        <input id="date" type='date' class="form-control" min='1980-01-01' max='2005-12-31'
                               name='birthdate'><br>
                        <br>
                    </div>
                    <div class="col-sm-6">
                        <div class="card mb-4 rounded-3">
                            <div class="card-header py-3">
                                <h5 class="my-0 fw-normal">간략한 자기소개</h5>
                            </div>
                            <div class="card-body">
                                <textarea name='content' id="content" cols="48" rows='5'></textarea><br>
                            </div>

                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card mb-4 rounded-3">
                            <div class="card-header py-3">
                                <h5 class="my-0 fw-normal">사진 업로드</h5>
                            </div>
                            <div class="card-body">
                                <input type="file" name="image">
                            </div>
                        </div>
                    </div>

                    <a class="w-40 btn btn-primary btn-1g" href="posts.jsp">목록보기</a><input
                        class="w-40 btn btn-primary btn-1g" type="submit" value="저장"> <input
                        class="w-40 btn btn-secondary btn-1g" type="reset" value="새로입력">
                </form>
                <script>
                    function validateForm() {
                        var writer = document.form1.writer;
                        var number = document.form1.number;
                        var major = document.form1.major;


                        if (writer.value == "") {
                            alert("이름을 입력해주세요");
                            return false;
                        }
                        if (writer.length < 2) {
                            alert("이름은 2글자 이상 입력해주세요");
                            return false;
                        }

                        if (number.length < 8) {
                            alert("학번은 8자리의 숫자로 입력해주세요");
                            return false;
                        }

                        if (major.value == "") {
                            alert("학부를 선택해주세요");

                            return false;
                        }
                    }
                </script>
            </div>
        </div>
    </div>
</div>


</body>
</html>