private ["_handled","_shift","_alt","_code","_ctrl","_alt","_interruption"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_alt = _this select 3;
_handled = false;
_interruption = [17,30,31,32]; //A,S,W,D

//Vault handling...
if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute"))) exitWith {
	true;
};

switch (_code) do
{
	//Saut (Espace)
	case 57:
	{
			[player,true] spawn fn_jump; //Exécution locale
			[[player,false],"fn_jump",nil,false] call fn_MP; //Exécution globale
			_handled = true;
		};
	};
};

_handled;
