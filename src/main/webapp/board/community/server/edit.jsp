<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Ŀ�´�Ƽ-�����Խ���-����</title>
</head>
<body>
	<header>
		<h1>���</h1>
	</header>
	<main>
		<h1>�����Խ���</h1>
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
</html>