<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel='stylesheet'
	href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
<link rel="stylesheet" href="../css/groupSetting.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

<link type="text/css" rel="stylesheet" href="../css/timer.css">

<link type="text/css" rel="stylesheet"
	href="../css/groupSidebar_list.css">

</head>

<body>

	<div id="wrapper">
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<!--nav-->
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

	<div class="container" class="row" id="group-Main-body">
		<input type="hidden" name="studyGroup_no" value="1">
		<div id="background-body">

			<div class="col-lg-9" id="setting">
				<div id="settingBoard">
					<div id="group-accept" class="table-wrap">
						<div id="acceptTable" class="table-box table-box--vertical"
							style="width: 600px; height: 650px;">
							<h2>그룹 신청 목록</h2>
							<table class="table table--vertical" id="accept-list">
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

						<br>


					</div>


				</div>

			</div>

			<div class="col-lg-3 col-md-12" id="group-Main-right"
				style="right: 0;">
				<div id="group-Main-right-top" class="col-md-5">
					<div id="right-sidebar-gibox"></div>
					<div id="right-sidebar-fileBox"></div>
				</div>
				<div id="group-Main-right-bottom" class="col-md-5">
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
	</div>

</body>
<!-- partial -->
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
<script src="../js/side.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/timer.js"></script>


</body>
</html>
