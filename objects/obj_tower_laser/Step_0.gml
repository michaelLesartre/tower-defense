/// @description Insert description here
// You can write your code in this editor
if hp<=0{
	destroyed=true
	sprite_index = spr_tower_d
	priority = -9999
}
else{
	destroyed=false
	sprite_index = spr_tower
	priority = 0
}

if !destroyed{
	if charge==10 and instance_exists(target){
		new_laser = instance_create_layer(x,y-34, "lasers", obj_laser);
		new_laser.target=target;
		charge=0
	}
}

if destroyed {
	respawn ++;
	if respawn == respawn_step_time {
		instance_create_layer(x, y, "instances", obj_tower_laser);
		instance_destroy(self);
	}
}