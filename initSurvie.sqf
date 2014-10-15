[] spawn  {
	private["_cp_nourriture","_cp_eau"];
	_fnc_food = 
	{
		if(cp_famine < 2) then {player setDamage 1; hint localize "NOTIF_MANGER_MORT";}
		else
		{
		cp_famine = cp_famine - 10;
		[] call updateInterface.sqf;
		if(cp_famine < 2) then {player setDamage 1; hint localize "NOTIF_MANGER_MORT";};
		switch(cp_famine) do {
			case 30: {hint localize "NOTIF_MANGER_1";};
			case 20: {hint localize "NOTIF_MANGER_2";};
			case 10: {hint localize "NOTIF_MANGER_3";player setFatigue 1;};
			};
		};
	};
	
	_fnc_water = 
	{
		if(cp_deshydratation < 2) then {player setDamage 1; hint localize "NOTIF_BOIRE_MORT";}
		else
		{
			cp_deshydratation = cp_deshydratation - 10;
			[] call updateInterface.sqf;
			if(cp_deshydratation < 2) then {player setDamage 1; hint localize "NOTIF_BOIRE_MORT";};
			switch(cp_deshydratation) do 
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
		[] call _cp_eau;
		sleep 250;
		[] call _cp_nourriture;
	};
};
