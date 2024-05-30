/**
 * 
 */
document.getElementById('checkAll').addEventListener('change',function(){
	let checkboxes = document.querySelectorAll('.orderCheckbox');
	checkboxes.forEach(checkbox => {
		checkbox.checked = this.checked;
	});
	updateGrandTotal();
});

document.querySelectorAll('.orderCheckbox').forEach(box => {
	box.addEventListener('change', function(){
		//체크박스 상태 변경시 총 주문합계 다시 계산하는 함수 호출
		updateGrandTotal();
		checkAllControl();
	});
});

function checkAllControl(){
	let all = document.querySelectorAll('.orderCheckbox').length;
	let checked = document.querySelectorAll('.orderCheckbox:checked').length;
	document.getElementById('checkAll').checked = all === checked;
}

function updatePrice(productNo, unitPrice){
	var quantity = document.getElementById('quantity'+productNo).value;
	var newPrice = unitPrice * quantity;
	document.getElementById('price'+productNo).innerHTML = newPrice.toLocaleString()+'원';
	updateGrandTotal();
}

function updateGrandTotal(){
	var total = 0;
	var checkboxes = document.getElementsByClassName('.orderCheckbox');
	for(var i = 0 ; i < checkboxes.length; i++){
		var productNo = checkboxes[i].value;
		if(checkboxes[i].checked){
			var priceElement = document.getElementById('price' + productNo);
			total += parseInt(priceElement.innerText.replace('원',''));
		}
	}
	
	document.getElementById('grandTotal').textContent = '총 합계 : ' + total.toLocaleString() + '원';
}

function oneOrderUpdatePrice(productNo, unitPrice){
	var quantity = document.getElementById('quantity'+productNo).value;
	var newPrice = unitPrice * quantity;
	document.getElementById('grandTotal').textContent = '총 합계 : ' + newPrice.toLocaleString() + '원';
	document.getElementById('totalAmount').innerHTML = newPrice;
}
