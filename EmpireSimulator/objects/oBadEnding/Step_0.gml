//Sets Camera Position

camera_set_view_pos(view_camera[0], xpos, 360);
xpos = max(xpos - 0.3, 0);

//Decides Fadeout or Fadein

if (!fadeout) a = max(a - 0.005, 0.25); else a = min(a + 0.005, 1);

//Prints Text Letter by Letter

l += 0.75;

print = string_copy(str, 1, l);

if (l > string_length(str) + 100) && (next < array_length_1d(strings) - 1)
{
	l = 0;
	next++;
}

str = strings[next];
