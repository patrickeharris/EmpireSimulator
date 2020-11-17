
nearest = instance_nearest(x, y, oAttackable);
if(instance_exists(nearest)){
    if(place_meeting(x, y, nearest)){
        with(nearest){
            hp -= 1;
        }
        instance_destroy();
    }
}

if(instance_exists(nearest)) {
	myPath = path_add();
	if(mp_grid_path(rmForestGrid, myPath, x, y, nearest.x, nearest.y, true)) {
		path_start(myPath, 4, path_action_stop, true);
	}
}

if(!instance_exists(nearest)) {
    instance_destroy();
}