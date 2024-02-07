//Draw o background
draw_sprite(battleBackground, 0, x, y);

//Draw as unidades na ordem de ataque
var _unitWithCurrentTurn = unitTurnOrder[turn].id;
for (var i = 0; i < array_length(unitRenderOrder); i++)
{
	with (unitRenderOrder[i])
	{
		draw_self();
	}
}

//Draw a interface das caixas de seleção
draw_sprite_stretched(sBox, 0, x+65, y+120, 250, 60);
draw_sprite_stretched(sBox, 0, x, y+120, 74, 60);