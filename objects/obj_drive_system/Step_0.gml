/// @description Insert description here
// You can write your code in this editor
drive_speed = max_drive_speed*max(hp,0)/max_hp
image_index = ceil((image_number-1)*hp/max_hp)


if(instance_exists(container)){
	var num_components = ds_list_size(container.components)
	for(index=0;index<num_components; index++){
		if(instance_exists(container.components[| index])){
			container.components[| index].path_speed=drive_speed;
		}
	}
}

if hp<=0{
	instance_destroy(self)	
}