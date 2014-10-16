class DefaultEventhandlers;
class CfgPatches 
{
	class survie_serveur
	{
		fileName = "survie_serveur.pbo";
		author[]= {""}; 
	};
};

class CfgFunctions
{
	class BIS
	{
		tag = "BIS";
		class MP
		{
			file = "\survie_serveur\MP";
			class initMultiplayer{};
			class call{};
			class spawn{};
			class execFSM{};
			class execVM{};
			class execRemote{};
			class addScore{};
			class setRespawnDelay{};
			class onPlayerConnected{};
			class initPlayable{};
			class missionTimeLeft{};
		};
	};
	
	class SURVIE
	{
		tag = "SURVIE";
		class systeme
		{
			file = "\survie_serveur\systeme";
			class clientDisconnect {};
			class cleanupRequest {};
		};
	};
};
