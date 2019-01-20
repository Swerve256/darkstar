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
player:PrintToPlayer("Welcome to Mogdonalds")
stock = {
    5160, 10000, --Urchin Sushi +1
	5162, 10000, --Squid Sushi +1
	5177, 10000, --Bream Sushi +1
	5163, 10000, --Sole Sushi +1
	5179, 10000, --Dorado Sushi +1
	5744, 10000, --Urchin Sushi +1
	5174, 10000, -- Tav Taco +1
	5718, 10000, -- Creampuff
	5766, 10000, -- Butter Crepe
} 
dsp.shop.general(player, stock);
end