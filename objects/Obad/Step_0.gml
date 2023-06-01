if (ncb < Oscore.cr){
	instance_destroy();
	if(Oplayer.x < 640){
		if(Opoint.y < 473){
			instance_create_layer(random_range(740,1242), random_range(473,655), "Instances_1",Obad);
		}
		else{	
			instance_create_layer(random_range(740,1242), random_range(473,150), "Instances_1",Obad);
		}
	}
	else{
		if(Opoint.y < 473){
			instance_create_layer(random_range(595,235), random_range(473,655), "Instances_1",Obad);
		}
		else{	
			instance_create_layer(random_range(595,235), random_range(473,150), "Instances_1",Obad);
		}
	}
//	ncb = other.cr;
}

//instance_create_layer(random_range(),random_range(), "Instances_1",Obad)

