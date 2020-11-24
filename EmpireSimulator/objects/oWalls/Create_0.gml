worth = 100;

//Checking Level

lvl = 1;
lvlup = false;

//Set House Health

hp = 10;
worth = 10;

health_max = hp;

healthbar_width = 60;
healthbar_height = 6;
healthbar_x = x - (healthbar_width / 2);
healthbar_y = y - 40;


open = false;
collide = false;
items = ds_list_create();
ds_list_add(items, ["Move"]);
ds_list_add(items, ["Upgrade"]);
ds_list_add(items, ["Sell"]);
itemCount = ds_list_size(items);
selected = 0;
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
menuWidth = guiWidth * 0.5;
menuMargin = guiWidth * 0.25;
previewWidth = guiWidth - (menuWidth + menuMargin);

//with(oGrid){
//    object = other;
//    mp_grid_add_instances(rmForestGrid, object, true);
//}