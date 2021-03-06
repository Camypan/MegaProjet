private["_handle","_temps"];
_temps = diag_tickTime;
diag_log "----------------------------------------------------------------------------";
diag_log "--------------------------------- Serveur DEBUT ----------------------------";
diag_log "----------------------------------------------------------------------------";
waitUntil {!isNull player && player == player};
diag_log "::Serveur:: Variables DEBUT";
[] call compile PreprocessFileLineNumbers "config\configGenerale.sqf";
diag_log "::Serveur:: Variables FIN";

waitUntil{!isNil "survie_serveur_pret"};
waitUntil{(survie_serveur_pret)};

switch (playerSide) do
{
	case civilian:
	{
		_handle = [] spawn survie_fnc_initSurvivants;
		waitUntil {scriptDone _handle};
	};
};

diag_log "---------------------------------------------------------------------------";
diag_log format["Serveur FIN :: Execution %1 secondes ",(diag_tickTime) - _temps];
diag_log "---------------------------------------------------------------------------";

[] execVM "systeme\initSurvie.sqf";
