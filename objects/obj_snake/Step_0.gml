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
		else{game_end();
			}
		break;
	case "right":
		if (!position_meeting(x + pSpeed, y, obj_wall) && !position_meeting(x + pSpeed, y, obj_snake_tail)) {
			x += pSpeed;
		}
		else{game_end();
			}
		break;
	case "up":
		if (!position_meeting(x, y - pSpeed, obj_wall) && !position_meeting(x, y - pSpeed, obj_snake_tail)) {
			y -= pSpeed;
		}
		else{game_end();
			}
		break;
	case "down":
		if (!position_meeting(x, y + pSpeed, obj_wall) && !position_meeting(x, y + pSpeed, obj_snake_tail)) {
			y += pSpeed;
		}
		else{game_end();
			}
		break;
}

// change dir
if(W && dir != "down"){
	dir = "up";
}
else if(S && dir != "up"){
	dir = "down";
}
else if(A && dir != "right"){
	dir = "left";
}
else if(D && dir != "left"){
	dir = "right";
}

// eat coin
if(position_meeting(x,y,obj_coin)){
	instance_destroy(obj_coin);
	instance_create_depth(x,y,2,obj_snake)
}