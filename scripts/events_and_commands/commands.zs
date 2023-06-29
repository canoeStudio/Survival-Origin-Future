/*
 * This script is created for the VSACCR modpack by Canoe Studio.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */
#loader crafttweaker reloadableevents
#priority 50

import crafttweaker.event.CommandEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.event.EntityLivingDeathEvent;
import crafttweaker.data.IData;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockState;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.AttributeInstance;
import crafttweaker.entity.AttributeModifier;
import crafttweaker.text.ITextComponent;
import crafttweaker.world.IWorld;

import mods.ctutils.utils.Math;
import mods.ctutils.world.IGameRules;
import mods.zenutils.command.ZenCommand;
import mods.zenutils.command.ZenUtilsCommandSender;
import mods.zenutils.command.CommandUtils;
import mods.zenutils.command.IGetTabCompletion;
import mods.zenutils.command.TabCompletion;
import mods.zenutils.StringList;
import mods.zenutils.I18n;

import scripts.util.lang as LangUtil;

val purgeCommand as ZenCommand = ZenCommand.create("purge");
purgeCommand.getCommandUsage = function(sender) {
    return "vsaccr.command.purgeCommand.usage";
};
purgeCommand.requiredPermissionLevel = 0; 
purgeCommand.execute = function(command, server, sender, args) {
    server.commandManager.executeCommand(server, "/kill @e[type=Item]");
    var player as IPlayer = CommandUtils.getCommandSenderAsPlayer(sender) as IPlayer;
    if (!isNull(player)) {
        player.sendRichTextMessage(ITextComponent.fromTranslation("vsaccr.command.purgeCommand.chat"));
    }
};
purgeCommand.register();

val suicideCommand as ZenCommand = ZenCommand.create("suicide");
suicideCommand.getCommandUsage = function(sender) {
    return "vsaccr.command.suicideCommand.usage";
};
suicideCommand.requiredPermissionLevel = 0;
suicideCommand.execute = function(command, server, sender, args) {
    var player as IPlayer = CommandUtils.getCommandSenderAsPlayer(sender) as IPlayer;
    if (!isNull(player)) {
        player.clearActivePotions();
        server.commandManager.executeCommand(server, "/kill " + player.name);
    }
};
suicideCommand.register();