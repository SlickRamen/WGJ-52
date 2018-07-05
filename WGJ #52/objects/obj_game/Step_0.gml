/// @desc Do Stuff

if room == rm_test and !setup{
setup = true
obj_player.can_move = false
var t = instance_create_layer(x,y-16,"Instances",obj_textbox)
t.overhead = false
for(var i = 0; i < array_length_1d(text); i++){
t.page_text[i] = text[i]
}
}

if keyboard_check_pressed(ord("R")){
	game_restart()	
}

if mouse_check_button_pressed(mb_left){
	instance_create_layer(mouse_x,mouse_y,"Instances",obj_exclamation)	
}