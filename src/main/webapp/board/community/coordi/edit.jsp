<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<link href="../../../css/coordiBoardEdit.css" type="text/css" rel="stylesheet" />
<title>Ŀ�´�Ƽ-�ڵ�Խ���-����</title>
</head>

<div id="hiririk">
   <header>
   <jsp:include page="/sidebar/header.jsp" />
   </header>
   <aside>
    <jsp:include page="/sidebar/sidebar.jsp" />
    </aside>
<body><!-- �⺻Ʋ�� reg�������� ������ ������ ������ �� �Խñ� ������ �ҷ��� �� �ְ� -->
	<header>
		<h1>���</h1>
	</header>
	<main>
		<h1>�ڵ�Խ���</h1>
		<section>
		<h1>�Խñ� �Է� ��</h1>
			<form>
				<fieldset>
					<legend>
						<label>�Խñ� ���</label>
					</legend>
					<select>
						<option>�Խ��Ǽ���</option>
						<option>��������</option>
						<option>�̺�Ʈ</option>
						<option>�����Խ���</option>
						<option>�ڵ��򰡰Խ���</option>
						<option>�׽�Ʈ����</option>
						<option>�����Խ���</option>
						<option>������ ��&����</option>
						<option>������</option>
					</select>
					<select>
						<option>���Ӹ�����</option>
						<option>�ڶ�</option>
						<option>����</option>
						<option>���</option>
					</select>
					<div>
						<label>����:</label>
						<input type="text" name="reg-title"/>
						<!-- �ۼ��� api�� -->
						
					</div>
					<div>
						<label>����:</label>
						<input type="text" name="reg-context"/>
						<input type="file" name="btn-file" value="����÷��"/>
					</div>
					<div>
						<input type="submit" name="btn-submit" value="���"/>
						<input type="submit" name="btn-exit" value="������"/>
					</div>
				</fieldset>
			</form>
		</section>
		
	</main>	
	<aside>
		<h1>����̵�</h1>
	</aside>
</body>
</div>
</html>