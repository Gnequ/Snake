// input
W = keyboard_check_pressed(ord("W"));
S = keyboard_check_pressed(ord("S"));
A = keyboard_check_pressed(ord("A"));
D = keyboard_check_pressed(ord("D"));

// move
previous_x = x;
previous_y = y;
switch(dir){
	case "left":
		if (!position_meeting(x - pSpeed, y, obj_wall) && !position_meeting(x - pSpeed, y, obj_snake_tail)) {
			x -= pSpeed;
		}
		break;
	case "right":
		if (!position_meeting(x + pSpeed, y, obj_wall) && !position_meeting(x + pSpeed, y, obj_snake_tail)) {
			x += pSpeed;
		}
		break;
	case "up":
		if (!position_meeting(x, y - pSpeed, obj_wall) && !position_meeting(x, y - pSpeed, obj_snake_tail)) {
			y -= pSpeed;
		}
		break;
	case "down":
		if (!position_meeting(x, y + pSpeed, obj_wall) && !position_meeting(x, y + pSpeed, obj_snake_tail)) {
			y += pSpeed;
		}
		break;
}

// change dir