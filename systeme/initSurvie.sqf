[] spawn  {
	private["_fnc_nourriture","_fnc_eau"];
	_fnc_nourriture = 
	{
		if(survie_famine < 2) then {player setDamage 1; hint localize "NOTIF_MANGER_MORT";}
		else
		{
		survie_famine = survie_famine - 10;
		[] call survie_fnc_updateInterface;
		if(survie_famine < 2) then {player setDamage 1; hint localize "NOTIF_MANGER_MORT";};
		switch(survie_famine) do {
			case 30: {hint localize "NOTIF_MANGER_1";};
			case 20: {hint localize "NOTIF_MANGER_2";};
			case 10: {hint localize "NOTIF_MANGER_3";player setFatigue 1;};
			};
		};
	};
	
	_fnc_eau = 
	{
		if(survie_deshydratation < 2) then {player setDamage 1; hint localize "NOTIF_BOIRE_MORT";}
		else
		{
			survie_deshydratation = survie_deshydratation - 10;
			[] call survie_fnc_updateInterface;
			if(survie_deshydratation < 2) then {player setDamage 1; hint localize "NOTIF_BOIRE_MORT";};
			switch(survie_deshydratation) do 
			{
				case 30: {hint localize "NOTIF_BOIRE_1";};
				case 20: {hint localize "NOTIF_BOIRE_2"; player setFatigue 1;};
				case 10: {hint localize "NOTIF_BOIRE_3"; player setFatigue 1;};
			};
		};
	};
	
	while{true} do
	{
		sleep 600;
		[] call _fnc_eau;
		sleep 250;
		[] call _fnc_nourriture;
	};
};
