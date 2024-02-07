//Controle do jogador
//Adicionando os direcionais para controle do jogador
var _inputH = keyboard_check(vk_right) - keyboard_check(vk_left);
var _inputV = keyboard_check(vk_down) - keyboard_check(vk_up);

//Adicione as teclas W, A, S, D para controle do jogador
_inputH += keyboard_check(ord("D")) - keyboard_check(ord("A"));
_inputV += keyboard_check(ord("S")) - keyboard_check(ord("W"));
var _inputD = point_direction(0,0,_inputH,_inputV);
var _inputM = point_distance(0,0,_inputH,_inputV);

if (_inputM != 0)
{
	direction = _inputD;	
	image_speed = 1;
}
else
{
	image_speed = 0;
	animIndex = 0;
}

FourDirectionAnimate();

x += lengthdir_x(spdWalk*_inputM,_inputD);
y += lengthdir_y(spdWalk*_inputM,_inputD);


