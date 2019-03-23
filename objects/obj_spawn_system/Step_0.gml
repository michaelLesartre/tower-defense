/// @description Insert description here
// You can write your code in this editor
if(hp<=max_hp/2 and not overloaded){
	overloaded=true
}
else{
	if(hp>max_hp/2 and overloaded){
		overloaded=false
	}
}

max_charge = base_max_charge*max_hp/hp

if(ion){
	if(alarm[0]==-1)
		alarm[0]=ion_timer_step;
}
else if not (instance_exists(minion[0]) and instance_exists(minion[1])){
	charge++;
	if charge>=max_charge{
		if not instance_exists(minion[0]){
			ydiff = 128
		}
		else{
			ydiff = -128
		}
		type = obj_enemy_minion
		if(overloaded){
			type = obj_enemy_shielded
			hp--;
		}
		newminion = instance_create_layer(path_x, path_y+ydiff, "instances", type);
		newminion.path_position = path_position
		var num_components = ds_list_size(newminion.components)
			for(index=0;index<num_components; index++){
				if(instance_exists(newminion.components[| index])){
					newminion.components[| index].path_position = path_position
				}
			}
		if not instance_exists(minion[0]){
			minion[0] = newminion
		}
		else{
			minion[1] = newminion
		}
		charge=0
	}
}


if hp<=0{
	instance_destroy(self)	
}