var _chao = place_meeting(x, y + 1, oSolo);

if(_chao)
{
	tempo_decidindo_andar -= 1;
	
	if(tempo_decidindo_andar <= 0)
	{
		andando = choose(true, false);
		
		// escolha direção para andar 
		if(andando)
		{
			velocidadeHorizontal = choose(velocidade, -velocidade);
		}
		else
		{
			velocidadeHorizontal = 0;
		}
		
		//reset de tempo
		tempo_decidindo_andar = room_speed * 3;
	}
	
	// animação inimigo
	if(velocidadeHorizontal != 0 && dano == false)
	{
		sprite_index = sInimigoAndando;
		image_xscale = sign(velocidadeHorizontal);
	}
	else
	{
		sprite_index = sInimigo;
	}
	
	// Bateu na parede voltou 
	if (place_meeting(x + velocidadeHorizontal, y, oSolo))
	{
		velocidadeHorizontal *= -1;	
	}
	
	// Queda dos lugares
	if (pode_cair == false)
	{
		if (place_meeting(x + (velocidadeHorizontal * 10), y + 1, oSolo) == false)
		{
			velocidadeHorizontal *= -1;	
		}
	}
	
}
else
{
	velocidadeVertical += gravidade;
	//velocidadeHorizontal = 0;
	
	if(velocidadeHorizontal != 0)
	{
		image_xscale = sign(velocidadeHorizontal);
	}
}

if(dano)
{
	sprite_index = sInimigoDano;
	velocidadeHorizontal = 0;
}