//Don't Know Why This Doesn't Work!!!

if (famineTextbox == true)
{
	draw_sprite_ext(sTextBox, 0, window_get_width() / 2 - 300, 20, 1.5, 1, 0, c_black, 1);

	text = "A famine has hit your city. \nSome of your people have died.";
    draw_set_halign(fa_middle);
	draw_text_ext(window_get_width() / 2, 20, text, 50, 1000);
}

if (tornadoTextbox == true)
{
	draw_sprite_ext(sTextBox, 0, window_get_width() / 2 - 300, 20, 1.5, 1, 0, c_black, 1);

	text = "Tornadoes sweep in. \nThey have destroyed some of your buildings.";
    draw_set_halign(fa_middle);
	draw_text_ext(window_get_width() / 2, 20, text, 50, 1000);
}

if (shortageTextbox == true)
{
	draw_sprite_ext(sTextBox, 0, window_get_width() / 2 - 300, 20, 1.5, 1, 0, c_black, 1);

	text = "A shortage of resources has struck. \nSome resources have been lost.";
    draw_set_halign(fa_middle);
	draw_text_ext(window_get_width() / 2, 20, text, 50, 1000);
}