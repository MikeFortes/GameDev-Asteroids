/// @description Insert description here
// You can write your code in this editor
image_angle += rotation;

image_alpha -= 0.02;
if image_alpha <= 0{
	instance_destroy();
}
