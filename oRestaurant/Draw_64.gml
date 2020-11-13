/// @description Insert description here
// You can write your code in this editor

//Menu To Show Health, Upgrade, and Sell


//Draw Health Bar

draw_sprite(sHealthBarBG, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(sHealthBar, 0, healthbar_x, healthbar_y, (health / health_max) * healthbar_width, healthbar_height);
draw_sprite(sHealthBarBorder, 0, healthbar_x, healthbar_y);