	class interfaceJoueur
   	{
		idd=-1;
		movingEnable=0;
	        fadein=0;
		duration = 99999999999999999999999999999999999999999999;
	        fadeout=0;
		name="interfaceJoueur";
		onLoad="uiNamespace setVariable ['interfaceJoueur',_this select 0]";
		objects[]={};
		
		class controleIcones
		{
			class iconeNourriture : survie_RscPicture 
			{
			
				idc = -1;
				text = "icones\nourriture.paa";
				x = safeZoneX+safeZoneW-0.115; 
				y = safeZoneY+safeZoneH-0.54;
				w = 0.03; 
				h = 0.04;
			};
			
			class iconeEau : survie_RscPicture 
			{
			
				idc = -1;
				text = "icones\eau.paa";
				x = safeZoneX+safeZoneW-0.115; 
				y = safeZoneY+safeZoneH-0.4925;
				w = 0.03; 
				h = 0.04;
			};
			
			class iconeSante : survie_RscPicture
			{
				
				idc = -1;
				text = "icones\sante.paa";
				x = safeZoneX+safeZoneW-0.115; 
				y = safeZoneY+safeZoneH-0.445;
				w = 0.03; 
				h = 0.04;
			};
		};
		
		class controleTextes
		{
			class texteNourriture
			{
				type=0;
				idc=23500;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class texteEau
			{
				type=0;
				idc=23510;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class texteSante
			{
				type=0;
				idc=23515;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
		};   
 	};
