//Don't Know Why This Doesn't Work!!!

if (famineTextbox == true)
{
	draw_sprite_ext(sTextBox, 0, 1100, 150, 400, 100, 0, c_black, 1);

	text = "A famine has hit your city. \nSome of your people have died.";

	draw_text(1050, 100, text);
}

if (tornadoTextbox == true)
{
	draw_sprite_ext(sTextBox, 0, 1100, 150, 400, 100, 0, c_black, 1);

	text = "Tornadoes sweep in. \nThey have destroyed some of your buildings.";

	draw_text(1050, 100, text);
}

if (shortageTextbox == true)
{
	draw_sprite_ext(sTextBox, 0, 1100, 150, 400, 100, 0, c_black, 1);

	text = "A shortage of resources has struck. \nSome resources have been lost.";

	draw_text(1050, 100, text);
}