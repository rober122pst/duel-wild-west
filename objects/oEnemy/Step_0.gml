script_execute(key_functions);

if(oGame.timer < 0 and !death){
	if(random_range(0, 100) < 9){
		//show_debug_message("Peguei_Enemy");
		take_gun = true;
	}

	if(take_gun){
		bull_angle = random_range(-10, 10)+180;

		if(random_range(0, 100) < 40 and ammo > 0){
			show_debug_message("Atirei")
			var bull = instance_create_depth(x, y, 0, oBulletEnemy)
			bull.direction = bull_angle;
			show_debug_message(bull_angle);
			ammo--;
			take_gun = false;
		}
	}
	if(place_meeting(x,y,oBullet)){
		death = true;
		image_angle = 90;	
	}
}