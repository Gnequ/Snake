// input
W = keyboard_check_pressed(ord("W"));
S = keyboard_check_pressed(ord("S"));
A = keyboard_check_pressed(ord("A"));
D = keyboard_check_pressed(ord("D"));

// move
switch(dir){
	case "left":
		x -= pSpeed;
		break;
	case "right":
		x += pSpeed;
		break;
	case "up":
		y -= pSpeed;
		break;
	case "down":
		y += pSpeed;
		break;
}