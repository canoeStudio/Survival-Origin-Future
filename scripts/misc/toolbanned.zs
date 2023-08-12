/*
 * All Rights Reserved: Canoe Studio (2020-2023)
 * Unless expressly stated in writing by Canoe Studio, all content contained in this document, including but not limited to text, graphics, images, audio, and video files, is protected by copyright law and other intellectual property laws. Without permission, no part of this document may be reproduced, modified, distributed, published, displayed, or used in any other way.
 * Canoe Studio retains full ownership of its brand, trademarks, and logos, among other intellectual property rights. Without the explicit written permission of Canoe Studio, no one may use or display the brand, trademarks, or logos of Canoe Studio.
 * Canoe Studio reserves the right to modify, update, and supplement this document to ensure its accuracy and completeness. Canoe Studio shall not be liable for any errors or omissions in this document.
 */ 

import crafttweaker.command.ICommandManager;
import crafttweaker.event.PlayerInteractEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.text.ITextComponent;



events.onPlayerInteract(function(event as PlayerInteractEvent) {
    var ser = server.commandManager as ICommandManager;
    var current = event.player.currentItem;
    if (!isNull(current) && current.name == "item.glassBottle") {
        event.player.dropItem(true);
    }
    if (!isNull(current) && current.name == "item.dyePowder.white") {
        event.player.dropItem(true);
    }
    for item in <ore:banitems>.items {
        var toolname = item.definition.id;
	    for i in 0 to 41 {
            var ban = event.player.getInventoryStack(i);
	        if(!isNull(ban) && ban.definition.id == toolname) {
		        ser.executeCommand(server, "clear " + event.player.name + " " + ban.definition.id);
		    }
        }
    }
 });


val tool = [
<minecraft:stone_axe>,
<minecraft:iron_axe>,
<minecraft:golden_axe>,
<minecraft:diamond_axe>,
<minecraft:stone_shovel>,
<minecraft:iron_shovel>,
<minecraft:golden_shovel>,
<minecraft:diamond_shovel>,
<minecraft:stone_pickaxe>,
<minecraft:iron_pickaxe>,
<minecraft:golden_pickaxe>,
<minecraft:diamond_pickaxe>,
<minecraft:stone_sword>,
<minecraft:iron_sword>,
<minecraft:golden_sword>,
<minecraft:diamond_sword>,
<minecraft:stone_hoe>,
<minecraft:iron_hoe>,
<minecraft:golden_hoe>,
<minecraft:diamond_hoe>,
<minecraft:leather_chestplate>,
<minecraft:leather_leggings>,
<minecraft:leather_boots>,
<minecraft:iron_helmet>,
<minecraft:iron_chestplate>,
<minecraft:iron_leggings>,
<minecraft:iron_boots>,
<minecraft:golden_helmet>,
<minecraft:golden_chestplate>,
<minecraft:golden_leggings>,
<minecraft:golden_boots>,
<minecraft:diamond_helmet>,
<minecraft:diamond_chestplate>,
<minecraft:diamond_leggings>,
<minecraft:diamond_boots>,
<minecraft:chainmail_helmet>,
<minecraft:chainmail_chestplate>,
<minecraft:chainmail_leggings>,
<minecraft:chainmail_boots>,
<minecraft:furnace>,
<projecte:rm_furnace>,
<projecte:dm_furnace>
] as IItemStack[];

for items in tool {	
    <ore:banitems>.add(items);
}

for ban in <ore:banitems>.items {
    ban.maxDamage = 1;
    recipes.remove(ban);
    mods.jei.JEI.hide(ban);
    (ban.definition.id);
}