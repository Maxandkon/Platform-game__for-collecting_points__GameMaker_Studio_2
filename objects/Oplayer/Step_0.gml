/// @description Insert description here
// You can write your code in this editor

UP_press = (keyboard_check(vk_up) or keyboard_check(vk_space) or keyboard_check(ord("W")));
RG_press = (keyboard_check(vk_right) or keyboard_check(ord("D")));
LF_press = (keyboard_check(vk_left) or keyboard_check(ord("A")));

var a1 = tilemap_get_at_pixel(tm, bbox_left, bbox_bottom + 1) & tile_index_mask;
var a2 = tilemap_get_at_pixel(tm, bbox_right, bbox_bottom + 1) & tile_index_mask;
if (a1 !=0 || a2 !=0){
	if (UP_press){
		vs = - ji;
	}
}


if (keyboard_check(ord("R"))){ game_restart();}

//g_left = (keyboard_check(vk_left) or keyboard_check(ord("A"))); 
//g_right = (keyboard_check(vk_right) or keyboard_check(ord("D")));
//g_up = (keyboard_check(vk_up) or keyboard_check(ord("W")) or keyboard_check(vk_space));

var dx = ms * (RG_press - LF_press);
var dy = vs;
vs += grav;

//y+=nu;	

y += dy;

if(dy > 0 ){ 
	var t1 = tilemap_get_at_pixel(tm, bbox_left, bbox_bottom) & tile_index_mask; 
	var t2 = tilemap_get_at_pixel(tm, bbox_right, bbox_bottom) & tile_index_mask; 
	
	if (t1 != 0 || t2 != 0) {
		y = ((bbox_bottom & ~63) - 1) - spbb;
		vs = 0;
	} 
}
else {
	var t1 = tilemap_get_at_pixel(tm, bbox_left, bbox_top) & tile_index_mask; 
	var t2 = tilemap_get_at_pixel(tm, bbox_right, bbox_top) & tile_index_mask; 
	
	if (t1 != 0 || t2 != 0) {
		y = ((bbox_top + 64) & ~63) - spbt;
		vs = 0;
	} 

}

//if (!place_meeting(x,y+nu,Object2)){
	//nu+=1;
//}
//if (place_meeting(x,y+nu,Object2)){
//	nu = 0;
//	if(g_up){ nu-=20; }	
//}
//if (place_meeting(x,y-5,Object2)){
//	nu = vu;
//	vu +=1;
//}
//else{ vu = 0;}



//if(g_left){	
//	if (!place_meeting(x-nlr,y,Object2)){
//		x-=nlr;	
//	}
//}
//if(g_right){
//	if (!place_meeting(x+nlr,y,Object2)){
//		x+=nlr;	
//	}
//}

x+=dx;

if(dx > 0 ){ 
	var t1 = tilemap_get_at_pixel(tm, bbox_right, bbox_top) & tile_index_mask; 
	var t2 = tilemap_get_at_pixel(tm, bbox_right, bbox_bottom) & tile_index_mask; 
	
	if (t1 != 0 || t2 != 0) {
		//x = ((bbox_right) - 1) - spbr;
		x = ((bbox_right & ~63) - 1) - spbr;
	} 
}
else{
	var t1 = tilemap_get_at_pixel(tm, bbox_left, bbox_top) & tile_index_mask; 
	var t2 = tilemap_get_at_pixel(tm, bbox_left, bbox_bottom) & tile_index_mask; 
	
	if (t1 != 0 || t2 != 0) {
		//x = ((bbox_left + 64)) - spbl;
		x = ((bbox_left + 64) & ~63) - spbl;
	} 
}


