private["_handle","_temps"];
_temps = diag_tickTime;
diag_log "----------------------------------------------------------------------------";
diag_log "--------------------------------- Serveur DEBUT ----------------------------------";
diag_log "----------------------------------------------------------------------------";
waitUntil {!isNull player && player == player}; //Wait till the player is ready
//diag_log "::Serveur:: Variables DEBUT";
//[] call compile PreprocessFileLineNumbers "core\configuration.sqf";
//diag_log "::Serveur:: Variables FIN";
//diag_log "::Serveur:: Eventhandlers DEBUT";
//[] call survie_cp_setupEVH;
//diag_log "::Serveur:: Eventhandlers FIN";
//diag_log "::Serveut:: Actions DEBUT";
//[] call survie_cp_configActions;
//diag_log "::Life Client:: Actions FIN";

//switch (playerSide) do
//{
//	case civilian:
//	{
//		_handle = [] spawn survie_cp_initSurvivants;
//		waitUntil {scriptDone _handle};
//	};
//};

diag_log "------------------------------------------------------------------------------------------------------";
diag_log format["                Serveur FIN :: Execution %1 secondes ",(diag_tickTime) - _temps];
diag_log "------------------------------------------------------------------------------------------------------";

[] execVM "systeme\initSurvie.sqf";
