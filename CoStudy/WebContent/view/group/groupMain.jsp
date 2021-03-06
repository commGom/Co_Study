<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="../common/header.jsp"></jsp:include>
<meta charset="UTF-8">
<link rel='stylesheet'
   href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
<link rel="stylesheet" href="../css/groupMain_style.css">
<link type="text/css" rel="stylesheet" href="../css/timer.css">
<link type="text/css" rel="stylesheet" href="../css/groupSidebar_list.css">



<link rel="stylesheet" type="text/css"
   href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">

</head>
<body>

   <div id="wrapper">
      <div id="sidebar-wrapper">
         <ul class="sidebar-nav">

            <li>
               <nav id="side-userbox">
                  <input type="image" name="user_name" value="이름">
               </nav>
            </li>
            <li>
               <nav id="side-timer">
                  <section id="timer">
                     <span id="time_output">00:00:00</span><br>
                     <div class="content_center">
                        <input type="button" id="timer_bnt_save" value="저장"> <input
                           type="button" id="timer_bnt_start" value="시작">
                     </div>
                  </section>
               </nav>
            </li>
            <li>
               <nav id="side-todo">
                  <h3 id="todo">TODO</h3>
                  <div id="right-sidebar-userlist">
                     <table class="table table-hover" id="list">
                        <tr>
                           <td><input type="radio">게임하기</td>
                        </tr>
                        <tr>
                           <td><input type="radio">노래듣기</td>
                        </tr>
                        <tr>
                           <td><input type="radio">영어 3시간 공부하기</td>
                        </tr>
                     </table>
                  </div>

               </nav>
            </li>
            <li>
               <nav id="side-groupschedule">GroupSchedule</nav>
            </li>
         </ul>
      </div>
      <div id="page-content-wrapper">
         <div class="container-fluid">
            <div class="row">
               <div class="col-lg-12">
                  <a href="#" class="btn" id="menu-toggle"><span
                     class="glyphicon glyphicon-menu-hamburger"></span></a>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="col-lg-2" id="sidelist">
         <div class="naccs">


            <div class="menu" style="margin-right: 50px;">
               <div class="active">
                  <span class="light"></span><span>피드</span>
               </div>
               <div>
                  <span class="light"></span><span
                     onclick="location.href='groupAcceptUser.do?studygroup_no=${studygroup_no }'">list-group</span>
               </div>
               <div>
                  <span class="light"></span><span>list</span>
               </div>
            </div>


         </div>
      </div>

   <div class="container" id="group-Main-body">
   
      <input type="hidden" name="studyGroup_no" value="1"> <input
         type="hidden" name="studyGroup_no" value="1">
      <div id="background-body">
         <div class="container bootstrap snippets bootdey">
            <div class="col-lg-8" id="peed">
               <div style="overflow: scroll; width: 800px; height: 700px;">


                  <c:forEach var="lists" items="${list }">
                     <div class="panel panel-white post panel-shadow">
                        <div class="post-heading">
                           <div class="pull-left image">
                              <img src="../img/user.png" class="img-circle avatar"
                                 alt="user profile image">
                           </div>
                           <!--작성자 이름  -->
                           <div class="pull-left meta">
                              <div class="title h5">
                                 <a href="#"><b>user_1</b></a> 작성함
                              </div>
                              <h6 class="text-muted time">${lists.page_board_date }</h6>
                           </div>
                        </div>
                        <!--글목록  -->
                        <div class="post-description">
                           <p>${lists.page_board_content }</p>

                        </div>
                        <!--댓글  -->
                        <div class="post-footer">
                           <div class="input-group">
                              <form action="insertGroupReply.do" method="get">
                                 <input type="hidden" name="studyGroup_no"
                                    value="${lists.studyGroup_no }"> <input
                                    type="hidden" name="page_board_no"
                                    value="${lists.page_board_no }"> <input
                                    type="hidden" class="form__field" name="group_reply_writer"
                                    value="test" /> <input type="text" class="form__field"
                                    name="group_reply_content" placeholder="내용을 입력해주세요." />

                                 <button type="submit"
                                    class="btn btn--primary btn--inside uppercase">댓글달기</button>
                              </form>
                           </div>




                           <c:forEach var="relist" items="${relist }">
                              <c:if test="${lists.page_board_no==relist.page_board_no }">

                                 <ul class="comments-list">
                                    <li class="comment"><a class="pull-left" href="#">
                                          <img class="avatar" src="../img/manager.png" alt="avatar">
                                    </a>
                                       <div class="comment-body">
                                          <div class="comment-heading">
                                             <h4 class="user">${relist.group_reply_no }</h4>
                                             <h5 class="time">${relist.page_board_no }</h5>
                                          </div>
                                          <p>${relist.group_reply_content }</p>
                                       </div></li>
                                 </ul>
                              </c:if>
                           </c:forEach>
                        </div>



                     </div>


                  </c:forEach>



               </div>
            </div>
            <div class="col-lg-2 col-md-12" id="group-Main-right"
             style="right: 0">
               <div id="group-Main-right-top"  class="panel panel-white post panel-shadow" class="col-md-5">
                  <div id="right-sidebar-gibox"></div>
                  <div id="right-sidebar-fileBox"></div>
                  <a href="../chatting/chattingRoom.do?roomNo=${roomNo}"
                     onclick="window.open(this.href, '_blank', 'width=800, height=1000'); return false;">그룹
                     채팅</a>
               </div>
               <div id="group-Main-right-bottom"  class="panel panel-white post panel-shadow" class="col-md-5" >
                  <div id="right-sidebar-userlist">
                     <table class="table table-hover" id="userlist">
                        <tr>
                           <td>...</td>

                        </tr>
                        <tr>
                           <td>...</td>
                        </tr>
                        <tr>
                           <td>...</td>
                        </tr>
                        <tr>
                           <td>...</td>
                        </tr>
                     </table>
                  </div>
                  <div id="right-sidebar-groupchat"></div>
               </div>
            </div>
         </div>



         <form action="groupWriting.do" method="get">
            <div id="write">

               <input type="hidden" name="studygroup_no" value="${studygroup_no}">
               <input id="text-box" type="text" name="page_board_content"
                  style="width: 600px; height: 70px;">
               <button id="button" type="submit"
                  style="width: 70px; height: 70px;">작성</button>
            </div>

         </form>  



      </div>
      </div>
   <jsp:include page="../common/footer.jsp"></jsp:include> 
</body> 
<!-- partial -->
<script
   src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script
   src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
<script src="../js/side.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/timer.js"></script>



<script type="text/javascript">
   $(document).on(
         "click",
         ".naccs .menu div",
         function() {
            var numberIndex = $(this).index();

            if (!$(this).is("active")) {
               $(".naccs .menu div").removeClass("active");
               $(".naccs ul li").removeClass("active");

               $(this).addClass("active");
               $(".naccs ul").find("li:eq(" + numberIndex + ")").addClass(
                     "active");

            }
         });
</script>
</body>
</html>