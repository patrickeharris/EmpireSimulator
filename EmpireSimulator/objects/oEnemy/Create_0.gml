/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
image_index = 0;
move = false;

gun = instance_create_layer(x + (sprite_width / 2), y + (sprite_height / 4), layer, oLightsaber);
gun.image_xscale = 0.5;
gun.image_yscale = 0.5;