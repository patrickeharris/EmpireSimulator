/// @description Insert description here
// You can write your code in this editor //Create and run when left button is pressed
//Create the new goal
if(direction >= 306 or direction <= 45) {
	image_xscale = 1;
}
if(direction >= 46 and direction <= 135) {
	image_xscale = 1;
}
if(direction >= 136 && direction <= 225) {
	image_xscale = -1;
}
if(direction >= 226 && direction <= 305) {
	image_xscale = -1;
}


nearest = instance_nearest(x, y, oAttackable);
if(instance_exists(nearest)){
    if(sqrt(sqr(nearest.x - x) + sqr(nearest.y - y)) < nearest.sprite_width/2){
        with(nearest){
            hp -= 0.1;
        }
    }
}

if(instance_exists(nearest)) {
	myPath = path_add();
	if(mp_grid_path(rmForestGrid, myPath, x, y, nearest.x, nearest.y + (sprite_height / 2), true)) {
		path_start(myPath, 4, path_action_stop, true);
        if(sqrt(sqr(nearest.x - x) + sqr(nearest.y - y)) < nearest.sprite_width/2){
            path_end();
        }
	}
}

