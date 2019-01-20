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
player:PrintToPlayer("Buy your nin shit here!")
stock = {
	5867, 15000,
    5868, 18000,
    5417,   9999,    -- Toolbag (Sanjaku-Tenugui)
    5319,   9999,    -- Toolbag (Shinobi-Tabi)
    5314,   5000,    -- Toolbag (Shihei)
    5869,   25000,   -- Toolbag (Chonofuda)
    1022,   5000     -- Thief's Tools
} 
dsp.shop.general(player, stock);
end