var row_number=2;
var count = 1;
function actualizarPreco(campo_quantidade,row_selected){
	var quantidade = campo_quantidade.value;
	var preco = document.getElementById("prod"+row_selected).value;
	var total = quantidade*preco;
	document.getElementById("total"+row_selected).innerHTML=total; 

}

function somaTotal(){
	var total1= document.getElementById("total1").textContent;
	var total2= document.getElementById("total2").textContent;
	var total3= document.getElementById("total3").textContent;
	
	var total4=parseInt(total1)+parseInt(total2)+parseInt(total3);
	
	document.getElementById('total4').value=total4;
}

function invalidar(){
	var total4=document.getElementById("total4");	
	if(total4.value=="0"){
		alert("Faça uma compra");
		return false;
	}
	return true;
}