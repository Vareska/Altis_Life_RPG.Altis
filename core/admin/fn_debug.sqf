/*
Antidebug script
detects whenever debug menu is pulled up and kicks them to splash screen

trust's players to report this guy to you, won't ban automatically

XXX: fix this piece of shit script


by: [AP] Jonny
*/

waitUntil {!isnull player && player == player};

sleep 10;

[] spawn

{
	while {true} do
            {

				if (!isnil {finddisplay 316000}) then
				{
					(format ['server globalChat "%1 is using a debug menu to cheat! Please alert an admin.";', name player]) call broadcast;
					sleep 1;
					player closeDialog 0;
					sleep 1;
					player endMission "mah nigga mah nigga";
				};
			};
};