/// @description Insert description here
// You can write your code in this editor
mp_grid_destroy(rmForestGrid)
rmForestGrid = mp_grid_create(0, 0, room_width, room_height, 8, 8);
mp_grid_add_instances(rmForestGrid, oHouse, true);
mp_grid_add_instances(rmForestGrid, oWoodHarvester, true);

alarm[0] = 1;
