/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
open = false;

collide = false;

selected = 0;

items = ds_list_create();
ds_list_add(items, ["Country A", 1000, 0, 100]);
ds_list_add(items, ["Country B", 0, 500, 100]);
ds_list_add(items, ["Country C", 250, 250, 100]);
itemCount = ds_list_size(items);


//GUI
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

menuWidth = guiWidth * 0.5;
menuMargin = guiWidth * 0.25;

previewWidth = guiWidth - (menuWidth + menuMargin);


