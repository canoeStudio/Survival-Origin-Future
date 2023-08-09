/*
 * All Rights Reserved: Canoe Studio (2020-2023)
 * Unless expressly stated in writing by Canoe Studio, all content contained in this document, including but not limited to text, graphics, images, audio, and video files, is protected by copyright law and other intellectual property laws. Without permission, no part of this document may be reproduced, modified, distributed, published, displayed, or used in any other way.
 * Canoe Studio retains full ownership of its brand, trademarks, and logos, among other intellectual property rights. Without the explicit written permission of Canoe Studio, no one may use or display the brand, trademarks, or logos of Canoe Studio.
 * Canoe Studio reserves the right to modify, update, and supplement this document to ensure its accuracy and completeness. Canoe Studio shall not be liable for any errors or omissions in this document.
 */ 
 
#loader crafttweaker reloadableevents
#ikwid
#priority 0

import crafttweaker.player.IPlayer;
import crafttweaker.world.IVector3d;
import crafttweaker.item.IItemStack;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.event.PlayerPickupItemEvent;
import crafttweaker.event.EntityLivingDamageEvent;
import crafttweaker.event.LivingExperienceDropEvent;
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.event.EntityLivingUseItemEvent.Start;
import crafttweaker.event.EntityLivingUseItemEvent.Finish;
import crafttweaker.event.EntityJoinWorldEvent;
import mods.zenutils.I18n;
import mods.zenutils.DelayManager;
import mods.ctutils.world.World;
import mods.ctutils.world.IGameRules;


static kachingMap as IItemStack[long] = {
    1 : <currency:penny>,
    5 : <currency:nickel>,
    10 : <currency:dime>,
    25 : <currency:quarter>,
    100 : <currency:dollar_bill>,
    500 : <currency:five_dollar_bill>,
    1000 : <currency:ten_dollar_bill>,
    2000 : <currency:twenty_dollar_bill>,
    5000 : <currency:fifty_dollar_bill>,
    10000 : <currency:hundred_dollar_bill>
};

for coin in kachingMap{
    kachingMap[coin].removeTooltip("^(.*)\\$(.*)");
}

events.onPlayerPickupItem(function(event as PlayerPickupItemEvent){
    for value in kachingMap{
        if event.item.item.definition.id == kachingMap[value].definition.id{
            val blc = event.player.ftbMoney;
            val amt = event.item.item.amount;
            event.player.ftbMoney = blc + (value*amt);
            event.cancel(); 
            event.item.setDead();
            event.player.sendPlaySoundPacket("entity.experience_orb.pickup", "master", event.player.position, 1.0, 1.0);

            val oSet = event.player.world.getGameRules().getBoolean("sendCommandFeedback") as string;
            event.player.world.setOrCreateGameRule("sendCommandFeedback", "false");
            event.player.server.commandManager.executeCommand(event.player.server, "title @p actionbar {\"text\":\"§6+ Θ "~(value*event.item.item.amount)~" → Θ "~event.player.ftbMoney~"\"}");
            event.player.world.setOrCreateGameRule("sendCommandFeedback", oSet);
        }
    }
});

