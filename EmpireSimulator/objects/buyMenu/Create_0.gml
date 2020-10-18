/// @description Insert description here
// You can write your code in this editor
shopOpen = false;
globalvar shop;
shop = false;

selected = 0;

items = ds_list_create();
ds_list_add(items, ["WoodHarvester", "Wood Harvester", 10, "Collects Wood"]);
ds_list_add(items, ["QuantumQuarry", "Quantum Quarry", 10, "Collects Stone"]);
ds_list_add(items, ["AutoMiner", "Auto Miner", 10, "Collects Iron"]);
ds_list_add(items, ["House", "House", 10, "Increases Population"]);
ds_list_add(items, ["Apartment", "Apartment", 10, "Increases Population"]);
ds_list_add(items, ["Restaurant", "Restaurant", 10, "Increases GDP"]);
ds_list_add(items, ["Mall", "Mall", 10, "Increases GDP"]);
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