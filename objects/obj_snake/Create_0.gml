// variables
pSpeed = 64;
previous_x = x;
previous_y = y;
tail = instance_create_depth(x + 64, y, 1, obj_snake_tail);
tail.leader = self;
dir = "left";