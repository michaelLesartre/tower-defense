/// @description aim at current target
// You can write your code in this editor
if(hp<=max_hp/2 and not overloaded){
	overloaded=true
	image_blend = c_ltgray
}
else{
	if(hp>max_hp/2 and overloaded){
		overloaded=false
		image_blend = c_white
	}
}

target = find_best_target(x, y, obj_tower, targeting_num)
if (target!=noone){
	image_angle = point_direction(x, y, target.x, target.y)	
}

max_charge = base_max_charge * max_hp/hp
if(ion){
	if(alarm[0]==-1)
		alarm[0]=ion_timer_max;
}
else if(charge<max_charge){
	charge++
}
else{
	if (target!=noone){
		new_laser = instance_create_layer(x,y, "lasers", obj_laser);
		new_laser.target=target;
		charge=0
		if overloaded{
			new_laser.color = c_white
			new_laser = instance_create_layer(x,y, "lasers", obj_laser);
			new_laser.target=target;
			new_laser.color = c_white
			hp-=1
		}
	}
}

image_index = charge*38/max_charge
if hp<=0{
	instance_destroy(self)	
}