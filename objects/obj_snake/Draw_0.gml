// draw self
draw_self();

// draw eyes
switch(dir){
	case "left":
		draw_sprite(sp_snake_eyes, 3, x, y);
		break;
	case "right":
		draw_sprite(sp_snake_eyes, 1, x, y);
		break;
	case "up":
		draw_sprite(sp_snake_eyes, 0, x, y);
		break;
	case "down":
		draw_sprite(sp_snake_eyes, 2, x, y);
		break;
}