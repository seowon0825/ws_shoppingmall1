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
}

function updateGrandTotal(){
	var total = 0;
	document.querySelectorAll('.orderCheckbox:checked').forEach(box => {
		var row = box.closest('tr');
		var priceElement = row.querySelector('[id^="price"]');
		var quantityInput = row.querySelector('input[type="number"]');
		
		var price = parseInt(priceElement.textContent.replace(/[^0-9]/g,''),10);
		var quantity = parseInt(quantityInput.value, 10);
		
		total += price;
	});
	document.getElementById('grandTotal').textContent = '총 합계 : ' + total.toLocaleString() + '원';
}

function oneOrderUpdatePrice(productNo, unitPrice){
	var quantity = document.getElementById('quantity'+productNo).value;
	var newPrice = unitPrice * quantity;
	document.getElementById('grandTotal').textContent = '총 합계 : ' + newPrice.toLocaleString() + '원';
	document.getElementById('totalAmount').innerHTML = newPrice;
}
