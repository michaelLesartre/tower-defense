if hp<=0{
	destroyed=true
	sprite_index = spr_tower_ion_d
	priority = -9999
}
else{
	destroyed=false
	priority = 0
}

if !destroyed{
	if charge==4 and instance_exists(target){
		new_laser = instance_create_layer(x,y-50, "lasers", obj_ion);
		new_laser.target=target;
		charge=0
		image_index=0;
	}
}

if destroyed {
	respawn ++;
	if respawn == respawn_step_time {
		instance_create_layer(x, y, "instances", obj_tower_ion);
		instance_destroy(self);
	}
}