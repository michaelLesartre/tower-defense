/// @description Insert description here
// You can write your code in this editor
for(index=0;index<ds_list_size(components); index++){
	if(instance_exists(components[| index])){
		instance_destroy(components[| index])
		global.playerhealth-=100
	}
}

instance_destroy()