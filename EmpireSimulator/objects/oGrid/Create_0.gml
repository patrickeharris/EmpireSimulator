/// @description Insert description here
// You can write your code in this editor
globalvar rmForestGrid;

rmForestGrid = mp_grid_create(0, 0, room_width, room_height, room_width / 32, room_height / 32);
mp_grid_add_instances(rmForestGrid, oShop, true);
mp_grid_add_instances(rmForestGrid, oTrader, true);