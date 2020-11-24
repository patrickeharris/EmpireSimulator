/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
image_index = 0;
move = false;
hp = 50;

laser = instance_create_layer(x, y, "Player", oLaser);
gun = instance_create_layer(x + (sprite_width / 2), y + (sprite_height / 4), layer, oLaserGun);