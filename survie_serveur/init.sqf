survie_serveur_pret = false;
publicVariable "survie_serveur_pret";

//Nettoyage déconnection
addMissionEventHandler ["HandleDisconnect",{_this call SURVIE_fnc_clientDeconnection; false;}];

survie_serveur_pret = true;
publicVariable "survie_serveur_pret";
