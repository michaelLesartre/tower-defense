/// @description aim at current target
// You can write your code in this editor

target = find_best_target(x, y, obj_tower, targeting_num)
if (target!=noone){
	image_angle = point_direction(x, y, target.x, target.y)	
}

max_charge = base_max_charge * max_hp/hp
if(charge<max_charge){
	charge++
}
else{
	if (target!=noone){
		new_laser = instance_create_layer(x,y, "lasers", obj_laser);
		new_laser.target=target;
		charge=0
	}
}

image_index = charge*38/max_charge
if hp<=0{
	instance_destroy(self)	
}