/*
 * This script is created for the VSACCR modpack by Canoe Studio.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
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

