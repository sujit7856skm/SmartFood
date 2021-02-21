function fetchState(str)
{
	var req=new XMLHttpRequest();
	req.open("get","city.jsp?state="+str,true);
	req.send();
	
	req.onreadystatechange=function()
	{
		
		if(req.readyState==4&&req.status==200)
			{
			
				document.getElementById("cities").innerHTML=req.responseText; 
	          
			}
	};
}

function hide_msg()
{
	document.getElementById('msg').style.display='none';
}