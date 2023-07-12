/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 100


#packmode casual adventure
import crafttweaker.world.IWorld;

function setKeepInventoryGameRule(world as IWorld) {
    world.setOrCreateGameRule("keepInventory", "true");
}

events.onWorldTick(function(event as crafttweaker.event.WorldTickEvent) {
    if (event.world.getWorldTime() % 100 == 0 && event.phase == "END" && event.side == "SERVER") {
        setKeepInventoryGameRule(event.world);
    }
});

events.onPlayerRespawn(function(event as crafttweaker.event.PlayerRespawnEvent) {
    setKeepInventoryGameRule(event.player.world);
});

events.onPlayerLoggedIn(function(event as crafttweaker.event.PlayerLoggedInEvent) {
    setKeepInventoryGameRule(event.player.world);
});