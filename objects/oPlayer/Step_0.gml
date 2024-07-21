script_execute(key_functions);

if(oGame.timer < 0 and !death){
	if(KEY_TAKE){
		//Loop para o angulo do tiro
		if(bull_angle >= 10){
			bull_angle_drop = true;
			bull_angle_up = false;
		}else if(bull_angle <= -10){
			bull_angle_up = true;
			bull_angle_drop = false;
		}
	
		if(bull_angle_drop){
			bull_angle-=3.3;
		}else if(bull_angle_up){
			bull_angle+=3.3;	
		}
		////////////////////////////////////
		take_gun = true;
	}else{
		take_gun = false;	
	}
	
	////Atirar
	if(KEY_SHOOT and ammo > 0 and take_gun){
		show_debug_message("Atirei")
		var bull = instance_create_depth(x, y, 0, oBullet) //Criar bala
		bull.direction = bull_angle; //Ajustar direção da bala
		bull_angle_sprite = bull_angle;
		ammo--;
	}		

	if(place_meeting(x,y,oBulletEnemy)){
		death = true;
		image_angle = 90;	
		show_debug_message("Morri")
	}
}

