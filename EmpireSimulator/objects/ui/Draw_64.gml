//Draw Shop UI
draw_set_color(c_black);
draw_set_alpha(0.8);
draw_rectangle(0, guiHeight, guiWidth, guiHeight - menuHeight, 0);
draw_set_alpha(1);
draw_set_color(c_white);

draw_sprite_ext(sMoney, 0, 20, guiHeight - (menuHeight / 2), 0.75, 0.75, 0, -1, 1);
draw_sprite_ext(sWood, 0, 120, guiHeight - (menuHeight / 2), 0.75, 0.75, 0, -1, 1);
draw_sprite_ext(sStone, 0, 220, guiHeight - (menuHeight / 2), 0.75, 0.75, 0, -1, 1);
draw_sprite_ext(sPopulation, 0, 320, guiHeight - (menuHeight / 2), 0.75, 0.75, 0, -1, 1);
draw_sprite_ext(sTimer, 0, 420, guiHeight - (menuHeight / 2), 0.75, 0.75, 0, -1, 1);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(70, guiHeight - (menuHeight / 2), string(money));
draw_text(170, guiHeight - (menuHeight / 2), string(wood));
draw_text(270, guiHeight - (menuHeight / 2), string(stone));
draw_text(370, guiHeight - (menuHeight / 2), string(population));
draw_text(470, guiHeight - (menuHeight / 2), string(timer / 60));
draw_set_halign(fa_left);
draw_text(520, guiHeight - (menuHeight / 2), "GDP per Capita: ");
if(gdp == 0){
    draw_text(720, guiHeight - (menuHeight / 2), string(0));
}
else{
    draw_text(720, guiHeight - (menuHeight / 2), string(gdp/population * 50));
}
draw_set_valign(fa_top);
draw_set_halign(fa_left);