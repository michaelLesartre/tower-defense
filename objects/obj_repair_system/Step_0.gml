if(hp<=max_hp/2 and not overloaded){
	overloaded=true
}
else{
	if(hp>max_hp/2 and overloaded){
		overloaded=false
	}
}


max_charge = base_max_charge*max_hp/hp

charge++
	if(charge>=max_charge){
		list = ds_priority_create();
		with(obj_subsystem) ds_priority_add(other.list, id, distance_to_point(other.x,other.y));
		valid=false
		while(not valid){
			target = ds_priority_delete_min(list)
			if target==0{
				valid=true
			}
			else if target!=self{
				if target.hp<target.max_hp{
					new_healbeam = instance_create_layer(x,y, "lasers", obj_healbeam);
					new_healbeam.target=target;
					valid=true
				}
			}
		}
		ds_priority_destroy(list)
		
		if(overloaded){
			list = ds_priority_create();
			with(obj_subsystem) ds_priority_add(other.list, id, distance_to_point(other.x,other.y));
			valid=false
			while(not valid){
				target2 = ds_priority_delete_min(list)
				if target2==0{
					valid=true
				}
				else if target2!=self and target2!=target{
					if target2.hp<target2.max_hp{
						new_healbeam = instance_create_layer(x,y, "lasers", obj_healbeam);
						new_healbeam.target=target2;
						valid=true
					}
				}
			}
			ds_priority_destroy(list)
			hp--
			}
			charge=0
		}


if hp<=0{
	instance_destroy(self)	
}