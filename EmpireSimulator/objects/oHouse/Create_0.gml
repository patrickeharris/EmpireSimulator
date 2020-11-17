worth = 100;

//Checking Level

lvl = 1;
enabled = false;
alarm[0] = room_speed * 1;
lvlup = false;

//Increasing Stats

numResidential++;
if(numResidential > numCommercial && populationHappiness < 100){
    populationHappiness += 10;
}

//Set House Health

hp = 50;

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
