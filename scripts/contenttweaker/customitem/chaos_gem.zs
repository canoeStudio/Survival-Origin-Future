#priority 2

#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import crafttweaker.events.IEventManager;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.block.IBlock;
import mods.contenttweaker.IItemUpdate;

var chaosGem= VanillaFactory.createItem("chaos_gem");
chaosGem.glowing = true;
chaosGem.maxStackSize = 64;
chaosGem.creativeTab = <creativetab:misc>;
chaosGem.onItemUpdate = function(itemStack, world, owner, slot, isSelected) {
    if (player.currentItem == <item:contenttweaker:chaos_gem>) {
        player.addPotionEffect(<potion:minecraft:hunger>);
    }
    return;
}
chaosGem.register();

var chaosOre = VanillaFactory.createBlock("chaos_ore", <blockmaterial:rock>);
chaosOre.blockHardness(5.5);
chaosOre.register();

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    if (!event.world.remote) { // world.remote
        if (event.drops.length == 0 || event.silkTouch) {
            return; 
        }
        val block as IBlock = event.block;
        if (block.definition.id == "contenttweaker:chaos_ore") {
            event.drops = [<item:contenttweaker:chaos_gem> % 100];
            event.addItem(<item:contenttweaker:chaos_gem> * 1 % 30);
            if (event.isPlayer) {
            var player = event.player;
            event.world.createLightningBolt(player.x, player.y, player.z);
            player.addPotionEffect(<potion:minecraft:hunger>);
            }
        }
    }
});
