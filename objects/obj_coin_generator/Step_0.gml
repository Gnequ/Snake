// gererate coin
while(!instance_exists(obj_coin)){
	randomx = irandom(15)*64 + 32;
	randomy = irandom(8)*64 + 32;
	if(!position_meeting(randomx,randomy,obj_snake)&&!position_meeting(randomx,randomy,obj_snake_tail)){
		instance_create_depth(randomx,randomy,2,obj_coin);
	}
}