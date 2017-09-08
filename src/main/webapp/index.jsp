<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Hmm | 전 세계의 개발자들을 널리 이롭게 하리라.</title>
		<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
					<link href="resources/css/index.css" rel="stylesheet" type="text/css">
						<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
						<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
					</head>

					<%@ include file="/header.jsp"%>

					<body>

						<!-- thumbnail 클래스를 부여해 이미지 크롭 및 사이즈 조작 -->
						<div class="thumbnail">
							<img src="https://static.pexels.com/photos/7114/laptop-mobile.jpg" alt="Cover Photo"/>
						</div>


						<!-- 게시판 영역 -->
						<div class="board">
							<!-- 검색창, 검색 정렬들의 패널 -->
							<div class="panel panel-default">
								<div class="panel-body">
									<!-- 패널의 왼쪽, 검색창 -->
									<div class="input-group col-md-6 pull-left">
										<input type="text" class="search-query form-control" placeholder="검색하기..."/>
										<span class="input-group-btn">
											<button id="search_icon" class="btn btn-warning" type="button">
												<span class=" glyphicon glyphicon-search"></span>
											</button>
										</span>
									</div>
									<!-- 패널의 오른쪽, 정렬창 -->
									<div class="pull-right">
										<div class="sort_options">

												<h3>최신순
												<span class="glyphicon glyphicon-chevron-down"></span></h3>
												&nbsp; &nbsp; &nbsp;

												<h3>모든 카테고리
												<span class="glyphicon glyphicon-chevron-down"></span></h3>
												&nbsp; &nbsp;
										</div>
									</div>
								</div>

								<!-- 게시판 테이블 -->
								<div class="table-responsive">
									<table class="table table-hover table-striped">
										<thead>
											<tr>
												<th>글번호</th>
												<th class="col-md-5">제목</th>
												<th>카테고리</th>
												<th>작성자</th>
												<th>추천수</th>
												<th>답글</th>
												<th>조회수</th>
												<th>작성일자</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>오늘 회사에서 있었던 웃긴일 ㅋㅋㅋ</td>
												<td>잡담</td>
												<td>
													<div class="profile">
														<a href="profile.jsp">
															<img class="img-circle" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120"/></a>
														멍멍이
													</div>
												</td>
												<td>3</td>
												<td>10</td>
												<td>25</td>
												<td>2017/08/29</td>
											</tr>
											<tr>
												<td>1</td>
												<td>취업 고민중입니다....</td>
												<td>잡담</td>
												<td>
													<div class="profile">
														<a href="profile.jsp">
															<img class="img-circle" src="https://www.omlet.co.uk/images/originals/hamsters-make-great-pets.jpg"/></a>
														취준생
													</div>
												</td>
												<td>2</td>
												<td>8</td>
												<td>63</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>JAVA vs. C</td>
												<td>신기술</td>
												<td>
													<div class="profile">
														<a href="profile.jsp">
															<img class="img-circle" src="https://pbs.twimg.com/profile_images/732976905150832642/rnF8KzUD.jpg"/></a>
														리퍼
													</div>
												</td>
												<td>3</td>
												<td>5</td>
												<td>48</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>오늘 점심 뭐 먹을까요</td>
												<td>잡담</td>
												<td>
													<div class="profile">
														<a href="profile.jsp">
															<img class="img-circle" src="https://t3.ftcdn.net/jpg/00/99/56/26/240_F_99562611_EIZ4AssrFTz1UNyOmM8KAChSeQNu5nMA.jpg"/></a>
														고독한오렌지
													</div>
												</td>
												<td>7</td>
												<td>37</td>
												<td>95</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>리눅스 개발 환경에 대해서</td>
												<td>운영체제</td>
												<td>소고기양념</td>
												<td>7</td>
												<td>18</td>
												<td>59</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>맥북 할인 받는 방법 공유</td>
												<td>MAC</td>
												<td>히역히역</td>
												<td>5</td>
												<td>7</td>
												<td>18</td>
												<td>2017/08/27</td>
											</tr>
											<tr>
												<td>1</td>
												<td>MySQL 강좌는 어디에 있을까요</td>
												<td>DB</td>
												<td>DB고수</td>
												<td>1</td>
												<td>26</td>
												<td>64</td>
												<td>2017/08/27</td>
											</tr>
											<tr>
												<td>1</td>
												<td>오늘 회사에서 있었던 웃긴일 ㅋㅋㅋ</td>
												<td>잡담</td>
												<td>
													<div class="profile">
														<a href="profile.jsp">
															<img class="img-circle" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120"/></a>
													</div>
												</td>
												<td>3</td>
												<td>10</td>
												<td>25</td>
												<td>2017/08/29</td>
											</tr>
											<tr>
												<td>1</td>
												<td>취업 고민중입니다....</td>
												<td>잡담</td>
												<td>취준생</td>
												<td>2</td>
												<td>8</td>
												<td>63</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>JAVA vs. C</td>
												<td>신기술</td>
												<td>자바맨</td>
												<td>3</td>
												<td>5</td>
												<td>48</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>오늘 점심 뭐 먹을까요</td>
												<td>잡담</td>
												<td>고독한미식가</td>
												<td>7</td>
												<td>37</td>
												<td>95</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>리눅스 개발 환경에 대해서</td>
												<td>운영체제</td>
												<td>소고기양념</td>
												<td>7</td>
												<td>18</td>
												<td>59</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>맥북 할인 받는 방법 공유</td>
												<td>MAC</td>
												<td>히역히역</td>
												<td>5</td>
												<td>7</td>
												<td>18</td>
												<td>2017/08/27</td>
											</tr>
											<tr>
												<td>1</td>
												<td>MySQL 강좌는 어디에 있을까요</td>
												<td>DB</td>
												<td>DB고수</td>
												<td>1</td>
												<td>26</td>
												<td>64</td>
												<td>2017/08/27</td>
											</tr>
											<tr>
												<td>1</td>
												<td>오늘 회사에서 있었던 웃긴일 ㅋㅋㅋ</td>
												<td>잡담</td>
												<td>
													<div class="profile">
														<a href="profile.jsp">
															<img class="img-circle" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120"/></a>
													</div>
												</td>
												<td>3</td>
												<td>10</td>
												<td>25</td>
												<td>2017/08/29</td>
											</tr>
											<tr>
												<td>1</td>
												<td>취업 고민중입니다....</td>
												<td>잡담</td>
												<td>취준생</td>
												<td>2</td>
												<td>8</td>
												<td>63</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>JAVA vs. C</td>
												<td>신기술</td>
												<td>자바맨</td>
												<td>3</td>
												<td>5</td>
												<td>48</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>오늘 점심 뭐 먹을까요</td>
												<td>잡담</td>
												<td>고독한미식가</td>
												<td>7</td>
												<td>37</td>
												<td>95</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>리눅스 개발 환경에 대해서</td>
												<td>운영체제</td>
												<td>소고기양념</td>
												<td>7</td>
												<td>18</td>
												<td>59</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>맥북 할인 받는 방법 공유</td>
												<td>MAC</td>
												<td>히역히역</td>
												<td>5</td>
												<td>7</td>
												<td>18</td>
												<td>2017/08/27</td>
											</tr>
											<tr>
												<td>1</td>
												<td>MySQL 강좌는 어디에 있을까요</td>
												<td>DB</td>
												<td>DB고수</td>
												<td>1</td>
												<td>26</td>
												<td>64</td>
												<td>2017/08/27</td>
											</tr>
											<tr>
												<td>1</td>
												<td>오늘 회사에서 있었던 웃긴일 ㅋㅋㅋ</td>
												<td>잡담</td>
												<td>
													<div class="profile">
														<a href="profile.jsp">
															<img class="img-circle" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120"/></a>
													</div>
												</td>
												<td>3</td>
												<td>10</td>
												<td>25</td>
												<td>2017/08/29</td>
											</tr>
											<tr>
												<td>1</td>
												<td>취업 고민중입니다....</td>
												<td>잡담</td>
												<td>취준생</td>
												<td>2</td>
												<td>8</td>
												<td>63</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>JAVA vs. C</td>
												<td>신기술</td>
												<td>자바맨</td>
												<td>3</td>
												<td>5</td>
												<td>48</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>오늘 점심 뭐 먹을까요</td>
												<td>잡담</td>
												<td>고독한미식가</td>
												<td>7</td>
												<td>37</td>
												<td>95</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>리눅스 개발 환경에 대해서</td>
												<td>운영체제</td>
												<td>소고기양념</td>
												<td>7</td>
												<td>18</td>
												<td>59</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>맥북 할인 받는 방법 공유</td>
												<td>MAC</td>
												<td>히역히역</td>
												<td>5</td>
												<td>7</td>
												<td>18</td>
												<td>2017/08/27</td>
											</tr>
											<tr>
												<td>1</td>
												<td>MySQL 강좌는 어디에 있을까요</td>
												<td>DB</td>
												<td>DB고수</td>
												<td>1</td>
												<td>26</td>
												<td>64</td>
												<td>2017/08/27</td>
											</tr>
											<tr>
												<td>1</td>
												<td>오늘 회사에서 있었던 웃긴일 ㅋㅋㅋ</td>
												<td>잡담</td>
												<td>
													<div class="profile">
														<a href="profile.jsp">
															<img class="img-circle" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120"/></a>
													</div>
												</td>
												<td>3</td>
												<td>10</td>
												<td>25</td>
												<td>2017/08/29</td>
											</tr>
											<tr>
												<td>1</td>
												<td>취업 고민중입니다....</td>
												<td>잡담</td>
												<td>취준생</td>
												<td>2</td>
												<td>8</td>
												<td>63</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>JAVA vs. C</td>
												<td>신기술</td>
												<td>자바맨</td>
												<td>3</td>
												<td>5</td>
												<td>48</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>오늘 점심 뭐 먹을까요</td>
												<td>잡담</td>
												<td>고독한미식가</td>
												<td>7</td>
												<td>37</td>
												<td>95</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>리눅스 개발 환경에 대해서</td>
												<td>운영체제</td>
												<td>소고기양념</td>
												<td>7</td>
												<td>18</td>
												<td>59</td>
												<td>2017/08/28</td>
											</tr>
											<tr>
												<td>1</td>
												<td>맥북 할인 받는 방법 공유</td>
												<td>MAC</td>
												<td>히역히역</td>
												<td>5</td>
												<td>7</td>
												<td>18</td>
												<td>2017/08/27</td>
											</tr>
											<tr>
												<td>1</td>
												<td>MySQL 강좌는 어디에 있을까요</td>
												<td>DB</td>
												<td>DB고수</td>
												<td>1</td>
												<td>26</td>
												<td>64</td>
												<td>2017/08/27</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>

						</div>

					</body>
				</html>
