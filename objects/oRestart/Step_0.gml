if(keyboard_check_pressed(vk_down)){
	current_option=1;	
}else if(keyboard_check_pressed(vk_up)){
	current_option=0;
}
if(keyboard_check_pressed(vk_enter)){
	option_select = current_option;
}

switch(option_select){
	case 0: room_restart(); break;
	case 1: game_end(); break;
}

image_index = current_option;