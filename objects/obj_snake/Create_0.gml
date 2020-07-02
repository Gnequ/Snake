// variables
pSpeed = 64;
previous_x = x;
previous_y = y;
dir = "left";

// tail
tail = instance_create_depth(x + 64, y, 1, obj_snake_tail);
tail.leader = self;
last_tail = tail;