---------------------------------------------------------------------------------------------------
-- func: kb/behemoth @kb
-- auth: <Unknown> :: Modded by Tagban
-- desc: Sets the players position to specific location (can be added to later).
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "iiii"
};
function onTrigger(player, x, y, z, zone)  
            player:setPos('-21.048', '-19.784', '-157.891', '180' , '153');
end
