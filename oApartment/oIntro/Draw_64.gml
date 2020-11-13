//Draws Black Bars

draw_sprite_ext(sPixel, 0, 0, 0, 1920, 200, 0, c_black, 1);

draw_sprite_ext(sPixel, 0, 0, 620, 1920, 300, 0, c_black, 1);

//Draw Text

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fMenu);

draw_text(640, 640, print);

if (holdspace > 0)
{
	draw_set_alpha(Wave(0.2, 0.8, 1, 0));
	draw_text(640, 710, "Hold space to skip");
	draw_set_alpha(1);
}

//Draws Fade Transition

draw_sprite_ext(sPixel, 0, 0, 200, 1920, 420, 0, c_black, a);
