console.log('connected');
window.onload = function(){

var $app_edit_buttons = $('.edit');
// for(var i = 0; i < poorSouls.length; i++) {
// document.body.children[4].children[1].children[2].children[0].children[0].children[4].children[0]


$app_edit_buttons.on('click', function (){
	// $app_edit_buttons.toggle(function (){
	// debugger
// debugger

	var course = this.parentNode.parentNode.children[0]
	var id = this.parentNode.parentNode.children[1]
	var dish_name = this.parentNode.parentNode.children[2]
	var description = this.parentNode.parentNode.children[3]
	var price = this.parentNode.parentNode.children[4]

	var delete_button = this.parentNode.parentNode.children[5].children[0]

		// $(dish_name).toggle();
	// var flashy_name = $(dish_name).replaceWith("<td><input type=\"text\" name=\"dish_name\" value=\"" + dish_name.innerText + "\" class=\"itext dish_name\"/></td>");
	// var flashy_description = $(description).replaceWith("<td><input type=\"text\" name=\"dish_name\" value=\"" + description.innerText + "\" class=\"itext description\"/></td>");
	// var flashy_price = $(price).replceWith("<td><input type=\"text\" name=\"dish_name\" value=\"" + price.innerText + "\" class=\"itext price\"/></td>");

	var flashy_name = $(dish_name).replaceWith("<td><input type=\"text\" name=\"dish_name\" value=\"" + dish_name.innerText + "\" class=\"itext dish_name\"/></td>");
	var flashy_description = $(description).replaceWith("<td><input type=\"text\" name=\"dish_name\" value=\"" + description.innerText + "\" class=\"itext description\"/></td>");
	var flashy_price = $(price).replaceWith("<td><input type=\"text\" name=\"dish_name\" value=\"" + price.innerText + "\" class=\"itext price\"/></td>");
	// <td><form method="POST" action=<%= "/menus/" + app.id.to_s%>>
	// var flashy_delete_button = $(delete_button).replaceWith("<td><input type=\"submit\" value=\"UDPATE\" id=\"update\" class=\"update ibutton\"/></td>");
	// $app_edit_buttons.on('click', function (){
	// 	})

var flashy_delete_button = $(delete_button).replaceWith("<td><form method=\"POST\" action=\"/menus/"+id.innerText+"\"><input type=\"hidden\" name=\"_method\" value=\"PUT\"/><input type=\"hidden\" name=\"id\" value=\""+id.innerText+"\"/><input type=\"hidden\" name=\"course\" class=\"item_course\" value=\""+course.innerText+"\"/><input type=\"hidden\" name=\"dish_name\" class=\"dish_name\" value=\""+$(".dish_name")[0].value+"\"/><input type=\"hidden\" name=\"description\" class=\"description\" value=\""+$(".description")[0].value+"\"/><input type=\"hidden\" name=\"price\" class=\"price\" value=\""+$(".price")[0].value+"\"/><input type=\"submit\" value=\"UPDATE\" class=\"ibutton update\"/></form></td>");
// debugger
var $app_update_buttons = $('.update');

 // var name = $(".dish_name")[0].value
 // var description = $(".description")[0].value
 // var price = $(".price")[0].value
	$app_update_buttons.on('click', function (){
	console.log("hit")
	$('.item_course').val($(".item_course")[0].value);
	$('.dish_name').val($(".dish_name")[0].value);
	$('.dish_name').val($(".dish_name")[0].value);
	$('.description').val($(".description")[0].value);
	$('.price').val($(".price")[0].value);

	});

});




};


