/// @description Insert description here
// You can write your code in this editor
if(hp == health_max){
    exit;
}

//Draw House Health Bar

draw_sprite_stretched(sHealthBarBG, 0, healthbar_x, healthbar_y, healthbar_width, healthbar_height);
draw_sprite_stretched(sHealthBar, 0, healthbar_x, healthbar_y, (hp / health_max) * healthbar_width, healthbar_height);
draw_sprite_stretched(sHealthBarBorder, 0, healthbar_x, healthbar_y, healthbar_width, healthbar_height);