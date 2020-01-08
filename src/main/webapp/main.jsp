<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Spring Note</h2>
<a href="list">list</a></br>
<a href="noteForm">noteForm</a></br>

<h4>Spring Note 개발 순서</h4>
<ol>
	<li>springNote webapp 생성</li>
	<li>
		JNDI DB 연결 세팅 (server.xml)
		<ul>
			<li>40라인 : Resource 추가</li>
			<li>65라인 : ResourceLink 추가</li>
		</ul>
	</li>
	<li>
		web.xml에 filter 추가
	</li>
	<li>
		controller, command, dto, dao 패키지 생성
	</li>
	<li>
		lombok을 pom.xml 추가<br/>
		(https://mvnrepository.com/)
	</li>
	<li>
		JDBC 드라이버 pom.xml 추가
	</li>
	<li>
		NoteDto.java (lombok 이용 생성)
	</li>
	<li>
		NoteDao.java (메소드 3개 구현)
	</li>
	<li>
		interface NoteCommand.java 선언
	</li>
	<li>
		NoteCommand 구현한 Command 생성
		<ul>
			<li>NoteWriteCommand.java</li>
			<li>NoteListCommand.java</li>
			<li>NoteDeleteCommand.java</li>
		</ul>
	</li>
	<li>
		NoteController.java (3개 기능)구현
	</li>
	<li>
		화면에 보여질 jsp 구현
	</li>
</ol>
</body>
</html>