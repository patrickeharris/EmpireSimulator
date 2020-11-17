/// @description Insert description here
// You can write your code in this editor //Create and run when left button is pressed
//Create the new goal
nearest = instance_nearest(x, y, oAttackable);
if(instance_exists(nearest)){
    if(sqrt(sqr(nearest.x - x) + sqr(nearest.y - y)) < 500){
        if(!instance_exists(laser)){
            with(gun){
                image_speed = 1;
                alarm[0] = 27;
            }
            laser = instance_create_layer(x, y, "Player", oLaser);
        }
    }
}

if(instance_exists(nearest)) {
	myPath = path_add();
	if(mp_grid_path(rmForestGrid, myPath, x, y, nearest.x, nearest.y + (sprite_height / 2), true)) {
		path_start(myPath, 4, path_action_stop, true);
        if(sqrt(sqr(nearest.x - x) + sqr(nearest.y - y)) < 500){
            path_end();
        }
	}
}

