/**
 * 
 */

function myCheck()
            {
               for(var i=0;i<document.form1.elements.length-1;i++)
               {
                  if(document.form1.elements[i].value=="")
                  {
                     alert("当前表单不能有空项");
                     document.form1.elements[i].focus();
                     return false;
                  }
               }
               return true;
              
            }

function checkDate(){
	var start=document.form1.start_time.value;
	var end=document.form1.end_time.value;
	var s=new Date(start.replace(/-/g,"\/"));
	var e=new Date(end.replace(/-/g,"\/"));
	//window.alert(s>e);
	
	if (s>=e) {
	        window.alert("开始时间大于结束时间,请重新输入！");
	        return false;
	  } else {
	        return true;
	  }
}

function checkActivity(){
	if(myCheck()){
		var start=document.form1.start_time.value;
		var end=document.form1.end_time.value;
		var s=new Date(start.replace(/-/g,"\/"));
		var e=new Date(end.replace(/-/g,"\/"));
		//window.alert(s>e);
		
		if (s>=e) {
		        window.alert("开始时间大于结束时间,请重新输入！");
		        return false;
		  } else {
		        return true;
		  }
	}else{
		return false;
	}
	
}

//判断当前table是否为空
function checkTable(){
	var table=document.getElementById("mytable");
	if(table.rows.length==1){
		document.write("<h2>当前没有报名信息</h2>");
	}
}
