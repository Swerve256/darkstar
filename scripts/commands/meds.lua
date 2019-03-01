--------------------------------------------------------------
-- func: !nin
-- auth: forgottenandlost
-- desc: opens a custom shop anywhere in the world
--------------------------------------------------------------

-----------------------------------
-- Auth: Me
-- desc: Some random shop items
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player,npc)
player:PrintToPlayer("Poor litte thing got a boo boo??")
stock = {
    4165, 100, --Silent oils
	4164, 100, --Prism Powder
	4151, 100, --Echo Drops
	4155, 100, --Remedy
	4144, 100, --High Elixir
	4153, 100, --Antacid
	4154, 100, --Holy Water
	4157, 100, --Poison Potion
	
	
} 
dsp.shop.general(player, stock);
end