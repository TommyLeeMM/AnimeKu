var angka1 = null;
var angka2 = null;
var flag = true;
var operation = "";
function add(i){
	var result = document.getElementById("result");
	if(flag == true){
		result.innerHTML = 0;
		flag = false;
	}
	if(result.innerHTML == 0 && result.innerHTML.indexOf(".") < 0)
		if(i == '.')
			result.innerHTML += i
		else
			result.innerHTML = i;
	else
		if(i != '.' || result.innerHTML.indexOf(".") < 0)
			result.innerHTML += i;
}

function symbol(i){
	var result = document.getElementById("result");
	if(i != '=' && angka1 == null){
		angka1 = result.innerHTML;
		operation = i;
		flag = true;
	}else{
		if(angka1 == null) return;
		angka2 = result.innerHTML;

		if(operation == '+'){
			result.innerHTML = parseFloat(angka1) + parseFloat(angka2);
		} else if(operation == '-'){
			result.innerHTML = parseFloat(angka1) - parseFloat(angka2);
		} else if(operation == 'x'){
			result.innerHTML = parseFloat(angka1) * parseFloat(angka2);
		} else if(operation == ':'){
			result.innerHTML = parseFloat(angka1) / parseFloat(angka2);
		}

		document.getElementById("history").innerHTML += "<p>"+angka1+" "+operation+" "+angka2+ " = "+result.innerHTML+"</p>";
		
		if(i != '='){
			angka1 = result.innerHTML;
			operation = i;
			flag = true;
		}else{
			angka1 = angka2 = null;
			flag = true;
			operation = "";
		}
	}
}

function special(i){
	var result = document.getElementById("result");
	angka1 = result.innerHTML;
	if(i == "sin")
		result.innerHTML = Math.sin(angka1 * Math.PI / 180);
	else if(i == "cos")
		result.innerHTML = Math.cos(angka1 * Math.PI / 180);
	else if(i == "tan")
		result.innerHTML = Math.tan(angka1 * Math.PI / 180);
	document.getElementById("history").innerHTML += "<p>"+i+"("+angka1+") = "+result.innerHTML+"</p>";
}

function clears(){
	angka1 = angka2 = null;
	flag = true;
	operation = "";
	document.getElementById("result").innerHTML = 0;
}

function del(){
	result = document.getElementById("result");
	result.innerHTML = result.innerHTML.substr(0,result.innerHTML.length-1);
	if(result.innerHTML.length == 0)
		result.innerHTML = 0;
}