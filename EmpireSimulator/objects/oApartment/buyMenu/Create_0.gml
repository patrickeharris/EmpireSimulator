/// @description Insert description here
// You can write your code in this editor
shopOpen = false;
globalvar shop;
shop = false;

selected = 0;

items = ds_list_create();
ds_list_add(items, ["WoodHarvester", "Wood Harvester", 10, "Collects Wood", 0, 0]);
ds_list_add(items, ["QuantumQuarry", "Quantum Quarry", 50, "Collects Stone", 0, 0]);
ds_list_add(items, ["AutoMiner", "Auto Miner", 100, "Collects Iron", 0, 0]);
ds_list_add(items, ["House", "House", 100, "Increases Population", 100, 100]);
ds_list_add(items, ["Apartment", "Apartment", 1000, "Increases Population", 1000, 1000]);
ds_list_add(items, ["Restaurant", "Restaurant", 500, "Increases GDP", 500, 500]);
ds_list_add(items, ["Mall", "Mall", 5000, "Increases GDP", 5000, 5000]);
itemCount = ds_list_size(items);


//GUI
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

menuWidth = guiWidth * 0.3;
menuMargin = guiWidth * 0.1;

previewWidth = guiWidth - (menuWidth + menuMargin);



costHouse = 100;
costApartment = 1000;

woodHouse = 100;
woodApartment = 1000;

stoneHouse = 100;
stoneApartment = 1000;

ironHouse = 0;
ironApartment = 100;



costRestaurant = 500;

woodRestaurant = 500;

stoneRestaurant = 500;

ironRestaurant = 250;



costWoodHarvester = 200;
costQuantumQuarry = 500;