private["_interface","_nourriture","_eau","_sante"];
disableSerialization;

_interface = uiNameSpace getVariable ["interfaceJoueur",displayNull];
if(isNull _interface) then {[] call survie_fnc_initInterface;};
_nourriture = _interface displayCtrl 23500;
_eau = _interface displayCtrl 23510;
_sante = _interface displayCtrl 23515;

//Nourriture
_nourriture ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.548];
_nourriture ctrlSetText format["%1", cp_famine];
_nourriture ctrlCommit 0;
//Eau
_eau ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.502];
_eau ctrlSetText format["%1", cp_deshydratation];
_eau ctrlCommit 0;
//Santé
_sante ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.456];
_sante ctrlSetText format["%1", round((1 - (damage player)) * 100)];
_sante ctrlCommit 0;
