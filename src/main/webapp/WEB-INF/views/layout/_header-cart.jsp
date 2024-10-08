<%@ page pageEncoding="utf-8"%>
<style id="cart-effect"></style>
<div class="panel panel-danger nn-cart">
	<div class="panel-heading">
		<h3 class="panel-title">
			<span class="glyphicon glyphicon-shopping-cart"></span>Giỏ hàng
		</h3>
	</div>
	<div class="panel-body">
		<div class="col-xs-5">
			<img id="cart-img" src="/static/images/shopping-cart.jpg">
		</div>
		<ul class="col-xs-7 text-center">
			<f:formatNumber value="${p.unitPrice}" pattern="#,###"/>
 			<li><strong id="cart-cnt">${cart.countCart}</strong> món hàng</li>
			<%--<li><strong id="cart-amt"><f:formatNumber value="${cart.amountCart}" pattern="#,###.00"/></strong> VND</li>--%>
			<li><strong id="cart-amt">${cart.amountCart}</strong> VND</li>
			<li><a href="/cart/view">Xem chi tiết</a></li>
		</ul>
	</div>
</div>
