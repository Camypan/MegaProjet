private["_handle","_temps"];
_temps = diag_tickTime;
diag_log "----------------------------------------------------------------------------";
diag_log "--------------------------------- Serveur DEBUT ----------------------------";
diag_log "----------------------------------------------------------------------------";
waitUntil {!isNull player && player == player};
//diag_log "::Serveur:: Variables DEBUT";
//[] call compile PreprocessFileLineNumbers "config\configGenerale.sqf";
//diag_log "::Serveur:: Variables FIN";
//diag_log "::Serveur:: Eventhandlers DEBUT";
//[] call survie_fnc_setupEVH;
//diag_log "::Serveur:: Eventhandlers FIN";
//diag_log "::Serveut:: Actions DEBUT";
//[] call survie_fnc_configActions;
//diag_log "::Life Client:: Actions FIN";

//switch (playerSide) do
//{
//	case civilian:
//	{
//		_handle = [] spawn survie_fnc_initSurvivants;
//		waitUntil {scriptDone _handle};
//	};
//};

diag_log "---------------------------------------------------------------------------";
diag_log format["Serveur FIN :: Execution %1 secondes ",(diag_tickTime) - _temps];
diag_log "---------------------------------------------------------------------------";

[] execVM "systeme\initSurvie.sqf";
