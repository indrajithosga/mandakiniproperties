<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table>

	<tr>
	
		<td>
		
			Indrajith
			
		</td>
	</tr>
	
	<tr>
	
		<td>
		
			Sudarshana
			
		</td>
	</tr>
	
	<tr>
	
		<td>
		
			Gayuki
			
		</td>
	</tr>
	
	<tr>
	
		<td>
		
			Sasenya
			
		</td>
	</tr>

</table>

	<script>
	
			vat tables=document.getElementsByTagName('table');
			var table=tables[tables.length-1];
			var rows=table.rows;
			
				for(var i=0,td;i<rows.length;i++){
					
					td=document.CreateElement('td');
					td.appendChild(document.createTextNode(i+1));
					rows[i].insertBefore(td,rows[i].firstChild);
				}
	
	
	
	</script>

</body>
</html>