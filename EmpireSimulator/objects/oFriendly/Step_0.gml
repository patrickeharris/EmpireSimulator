/// @description Insert description here
// You can write your code in this editor //Create and run when left button is pressed
//Create the new goal

if(hp <= 0){
    instance_destroy();
}
if(direction >= 306 or direction <= 45) {
	image_xscale = 1;
    gun.image_xscale = 0.5;
    gun.x = x + (sprite_width / 2) + 5 * image_xscale - 10;
    gun.y = y + (sprite_height / 4) - 10;
}
if(direction >= 46 and direction <= 135) {
	image_xscale = 1;
    gun.image_xscale = 0.5;
    gun.x = x + (sprite_width / 2) + 5 * image_xscale - 10;
    gun.y = y + (sprite_height / 4) - 10;
}
if(direction >= 136 && direction <= 225) {
	image_xscale = -1;
    gun.image_xscale = -0.5;
    gun.x = x + (sprite_width / 2) + 5 * image_xscale + 10;
    gun.y = y + (sprite_height / 4) - 10;
}
if(direction >= 226 && direction <= 305) {
	image_xscale = -1;
    gun.image_xscale = -0.5;
    gun.x = x + (sprite_width / 2) + 5 * image_xscale + 10;
    gun.y = y + (sprite_height / 4) - 10;
}

gun.image_speed = 0;
move = false;

nearest = instance_nearest(x, y, oEnemies);


if(instance_exists(nearest)) {
    if(path_index == -1){
        myPath = path_add();
        if(mp_grid_path(rmForestGrid, myPath, x, y, nearest.x, nearest.y + (sprite_height / 2), true)) {
            path_start(myPath, 4, path_action_stop, true);
            move = true;
        }
    }
    else{
        move = true;
        if(sqrt(sqr(nearest.x - x) + sqr(nearest.y - y)) < nearest.sprite_height){
            path_end();
            move = false;
        }
    }
    if(sqrt(sqr(nearest.x - x) + sqr(nearest.y - y)) < nearest.sprite_height){
            move = false;
            gun.image_speed = 1;
            with(nearest){
                hp -= 0.1;
            }
    }
}

if (!move)
{
    sprite_index = sFriendly;
	image_speed = 0;
    image_index = 0;
} else 
{
    sprite_index = sFriendlyR;
	image_speed = 1;
}