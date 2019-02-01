/// @description Insert description here
// You can write your code in this editor
if(instance_exists(container)){
	var num_components = ds_list_size(container.components)
	for(index=0;index<num_components; index++){
		if(instance_exists(container.components[| index]){
			container.components[| index].x+=drive_speed;
		}
	}
}

if hp<=0{
	instance_destroy(self)	
}