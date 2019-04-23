/// @description Insert description here
// You can write your code in this editor
if(hp<=max_hp/2 and not overloaded){
	overloaded=true
	if(container.shielded < container.max_shield){
		container.shielded++
	}
}
else{
	if(hp>max_hp/2 and overloaded){
		overloaded=false
	}
}

drive_speed = max_drive_speed*max(hp,0)/max_hp*container.overcharge
image_index = ceil((image_number-1)*hp/max_hp)
if(ion){
		drive_speed=0;
		if(alarm[0]==-1)
			alarm[0]=ion_timer_max;
	}
if(instance_exists(container)){
	var num_components = ds_list_size(container.components)
	for(index=0;index<num_components; index++){
		if(instance_exists(container.components[| index])){
			container.components[| index].path_speed=drive_speed;
		}
	}
	container.path_speed = drive_speed;
}



if hp<=0{
	instance_destroy(self)	
}