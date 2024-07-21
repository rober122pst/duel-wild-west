display_set_gui_size(view_get_wport(view_camera[0]), view_get_hport(view_camera[0]))
if(timer > 0 and timer <= 3) {
	draw_set_color(#ad2d2d);
	draw_set_font(fTimer);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(view_wport[0]/2, 250, string(timer));
}else if(timer == 0){
	draw_set_color(#ad2d2d);
	draw_set_font(fTimer);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(view_wport[0]/2, 250, "GO");
}
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
