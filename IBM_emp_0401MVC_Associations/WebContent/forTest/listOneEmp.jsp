<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="forTest.*"%>

<%-- �����m�߱ĥ� Script ���g�k���� --%>

<%-- ���X Concroller EmpServlet.java�w�s�Jrequest��EmpVO����--%>
<%EmpVO empVO = (EmpVO) request.getAttribute("empVO");%>

<%-- ���X ������DeptVO����--%>
<%
  DeptDAO dao = new DeptDAO();
  DeptVO deptVO = dao.findByPrimaryKey(empVO.getDeptno());
%>
<html>
<head>
<title>���u��� - listOneEmp.jsp</title>
</head>
<body bgcolor='white'>
<b><font color=red>�����m�߱ĥ� Script ���g�k����:</font></b>
<table border='1' cellpadding='5' cellspacing='0' width='800'>
	<tr bgcolor='#CCCCFF' align='center' valign='middle' height='20'>
		<td>
		<h3>���u��� - ListOneEmp.jsp</h3>
		</td>
	</tr>
</table>

<table border='1' bordercolor='#CCCCFF' width='800'>
	<tr>
		<th>���u�s��</th>
		<th>���u�m�W</th>
		<th>¾��</th>
		<th>���Τ��</th>
		<th>�~��</th>
		<th>����</th>
		<th>����</th>
	</tr>
	<tr align='center' valign='middle'>
		<td><%=empVO.getEmpno()%></td>
		<td><%=empVO.getEname()%></td>
		<td><%=empVO.getJob()%></td>
		<td><%=empVO.getHiredate()%></td>
		<td><%=empVO.getSal()%></td>
		<td><%=empVO.getComm()%></td>
		<td><%=empVO.getDeptno()%>�i<%=deptVO.getDname()%> - <%=deptVO.getLoc()%>�j</td>
	</tr>
</table>

</body>
</html>
