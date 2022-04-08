/// @description Insert description here
// You can write your code in this editor
move_wrap(true, true, 0);

image_angle += rotation;

if vida <= 0{
	audio_play_sound(snd_explosao, 1, false);
		global.score += 15;
	repeat(3){
		instance_create_layer(x, y, "Instances", obj_asteroide_pequeno);
	}
	
		repeat(8){
		instance_create_layer(x, y, "Instances", obj_detritos);
	}
	
	instance_destroy();
}   


