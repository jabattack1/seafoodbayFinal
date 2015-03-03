console.log('connected');
window.onload = function(){

var $app_edit_buttons = $('.edit');
// for(var i = 0; i < poorSouls.length; i++) {
// document.body.children[4].children[1].children[2].children[0].children[0].children[4].children[0]


$app_edit_buttons.on('click', function (){
	// debugger
	var id = this.parentNode.parentNode.children[0]
//   	console.log(this.parentNode.parentNode.children[0]);
	var dish_name = this.parentNode.parentNode.children[1]
	// console.log(dish_name);
	var description = this.parentNode.parentNode.children[2]
	// console.log(description);
	var price = this.parentNode.parentNode.children[3]

	var delete_button = this.parentNode.parentNode.children[4].children[0]
// debugger
	var flashy_name = $(dish_name).replaceWith("<td><input type=\"text\" name=\"dish_name\" value=\"" + dish_name.innerText + "\" class=\"itext\"/></td>");
	var flashy_description = $(description).replaceWith("<td><input type=\"text\" name=\"dish_name\" value=\"" + description.innerText + "\" class=\"itext\"/></td>");
	var flashy_price = $(price).replaceWith("<td><input type=\"text\" name=\"dish_name\" value=\"" + price.innerText + "\" class=\"itext\"/></td>");
	// <td><form method="POST" action=<%= "/menus/" + app.id.to_s%>>
	debugger
	// var flashy_delete_button = $(delete_button).replaceWith("<td><form method=\"POST\" action=<%= \"/menus/\"" + id.innerText + "%>>
 //  		<input type=\"hidden\" name=\"_method\" value=\"UPDATE\" />
 //  		<input type=\"hidden\" name=\"id\" value=" + id.innerText + "/>
 //  		<input type=\"submit\" value=\"UPDATE\" class=\"ibutton\"/>
	// </form></td>");
});

};

