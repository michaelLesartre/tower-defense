/// @description Insert description here
// You can write your code in this editor
alive = false
for(index=0;index<ds_list_size(components); index++){
	if(instance_exists(components[| index])){
		alive = true
	}
}
if not alive{
	instance_destroy()
}