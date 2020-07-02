/// @description Insert description here
// You can write your code in this editor
pSpeed = 64;
previous_x = x;
previous_y = y;
tail = instance_create_depth(x+64,y,0,obj_snake_tail);
tail.leader = self;
dir = "left";