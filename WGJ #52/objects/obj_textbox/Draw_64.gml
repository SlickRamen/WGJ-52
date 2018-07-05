/// @desc Draw

if !overhead{
if keyboard_check_pressed(vk_enter){
	if page < array_length_1d(page_text)-1{
	count = 1
	wait = 0
	draw_str = ""
	page += 1
	}else{
	obj_view.target = obj_player
	obj_player.can_move = true
	squash = "out"
	}
}

if wait > 0{
	wait -= 1
}else{
	if count - 1 != string_length(page_text[page]){
	if string_char_at(page_text[page],count) == "!"{
	wait = 10
	}else if string_char_at(page_text[page],count) == "?"{
	wait = 10
	}else if string_char_at(page_text[page],count) == "."{
	wait = 10
	}else if string_char_at(page_text[page],count) == ","{
	wait = 7	
	}else{
	wait = 1
	}
	
	draw_str += string_char_at(page_text[page],count)
	count += 1
	}
}


if squash == "out"{
	if squash_amt > 0{
		squash_amt -= 0.05
	}else{
		instance_destroy()	
	}
}else if squash == "in"{
	if !squash_amt >= 1{
		squash_amt += 0.05
	}else{
		squash = "off"	
	}
}else if squash == "off"{
	squash_amt = lerp(squash_amt,1,0.3)
}

draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_textbox)
draw_set_color(global.black_color)	
draw_rectangle(-6,display_get_gui_height()/1.5+5,(display_get_gui_width())*squash_amt,display_get_gui_height()+1,false)
draw_set_color(c_white)	
draw_rectangle(-1,display_get_gui_height()/1.5,(display_get_gui_width()-5)*squash_amt,display_get_gui_height()-4,false)
if squash != "out"{
draw_text_outline_ext(5,display_get_gui_height()/1.5+5,draw_str,12,300)
}else{
text_pos -= 14
draw_text_outline_ext(text_pos+5,display_get_gui_height()/1.5+5,draw_str,12,300)
}
if next == "in"{
	next_pos = lerp(next_pos,display_get_gui_width()-19,0.1)
}else if next =="out"{
	next_pos = lerp(next_pos,display_get_gui_width()-9,0.1)
}
draw_text_outline_ext(next_pos,display_get_gui_height()-9,">>>",12,300)
draw_set_color(c_white)	
}

if next_pos > -18.5 and next == "in"{
	next = "out"	
}else if next_pos > -8.5 and next == "out"{
	next = "in"	
}
