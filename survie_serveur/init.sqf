survie_serveur_pret = false;
publicVariable "survie_serveur_pret";

//Nettoyage déconnection
addMissionEventHandler ["HandleDisconnect",{_this call TON_fnc_clientDisconnect; false;}];

survie_serveur_pret = true;
publicVariable "survie_serveur_pret";
