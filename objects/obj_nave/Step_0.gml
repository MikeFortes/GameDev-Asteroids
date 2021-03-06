/// @description Insert description here
// You can write your code in this editor
/*
if keyboard_check(vk_up){
	sprite_index = spr_nave_movendo;
	speed = 3;
}else if keyboard_check(vk_down){
	sprite_index = spr_nave_movendo;
	speed = -3;
}else{
	sprite_index = spr_nave_parada;
	speed = 0;
}

if keyboard_check(vk_left){
	direction += 3;
}

if keyboard_check(vk_right){
	direction -= 3;
}
*/
if keyboard_check(vk_up){
	sprite_index = spr_nave_movendo;
	speed = vel;
}else if keyboard_check(vk_down){
	sprite_index = spr_nave_movendo;
	speed = -vel;
}else{
	sprite_index = spr_nave_parada;
	speed = lerp(speed, 0, 0.05);
}

if keyboard_check(vk_left){
	dir = 3;
}else if keyboard_check(vk_right){
	dir = -3;
}else{
	dir = lerp(dir, 0, 0.08);
}

if keyboard_check_pressed(vk_space){
	audio_play_sound(snd_projetil, 1, false);
	var inst = instance_create_layer(x, y, "Instances", obj_projetil);	
	inst.speed = 6;
	inst.direction = direction;
	inst.image_angle = direction;
	inst.dano = dano_nave;
}

direction += dir;
image_angle = direction;
 
move_wrap(true, true, 0);

if alarm[0] > 0{
	if image_alpha <= 0{
		alfa_add = 0.05;
	}else if image_alpha >= 1{
		alfa_add = -0.05;
	}
	image_alpha += alfa_add;
}else{
	image_alpha = 1;	
}

if vida <= 0{
	game_restart();
}
if global.score >= 1000{
	room_goto(rm_final);
}



