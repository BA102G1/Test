<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="java.util.*"%>
<%@ page import="forTest.*"%>
<%-- �����խ��A�m�߱ĥ� Script ���g�k���� --%>

<%
    EmpDAO dao = new EmpDAO();
	List<EmpVO> list = dao.getAll();
%>
<html>
<head>
<title>�Ҧ����u���</title>
</head>
<body bgcolor='white'>
<b><font color=red>�����խ��A�m�߱ĥ� Script ���g�k����:</font></b>
<table border='1' cellpadding='5' cellspacing='0' width='600'>
	<tr bgcolor='#CCCCFF' align='center' valign='middle' height='20'>
		<td>
		<h3>�Ҧ����u���<br>
		    <font color=red>(listAllEmp_01_Script_Test.jsp)</font></h3>
		</td>
	</tr>
</table>

<table border='1' bordercolor='#CCCCFF' width='600'>
	<tr>
		<th>���u�s��</th>
		<th>���u�m�W</th>
		<th>¾��</th>
		<th>���Τ��</th>
		<th>�~��</th>
		<th>����</th>
		<th>����</th>
	</tr>
	<%
	for (EmpVO empVO : list) {
	%>
	<tr align='center' valign='middle'>
		<td><%=empVO.getEmpno()%></td>
		<td><%=empVO.getEname()%></td>
		<td><%=empVO.getJob()%></td>
		<td><%=empVO.getHiredate()%></td>
		<td><%=empVO.getSal()%></td>
		<td><%=empVO.getComm()%></td>
		<td><%=empVO.getDeptno()%></td>
	</tr>
	<%
	}
	%>
</table>

</body>
</html>
