/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 233


#packmode adventure expert

import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.command.ICommandSender;
import crafttweaker.damage.IDamageSource;
import crafttweaker.data.IData;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.util.Position3f;
import crafttweaker.world.IBlockPos;
import crafttweaker.world.IFacing;
import crafttweaker.text.ITextComponent;

import mods.ctutils.utils.Math;
import mods.ctutils.world.IGameRules;
import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import mods.ItemStages;
import mods.jei.JEI;

import scripts.util.recipes as RecipeUtil;
import scripts.util.lang as LangUtil;

// Perfectly balanced.
// As everything should be.

static disallowedMods as string[] = [
    "xijun",
    "bacteria",
    "deconstruction",
    "lastsword",
    "lolipickaxe",
    "manaita",
    "torcherino",
    "decomp_table",
    "deconstrcution_table",
    "decon_table",
    "decontable",
    "xray",
    "uncrafting_table",
    "slashblade",
    "slashbladetic"
];

function badModLoaded() as bool {
    for mod in disallowedMods {
        if (loadedMods has mod) {
            return true;
        }
    }
    return false;
}

for mod in disallowedMods {
    if (loadedMods has mod) {
        for item in loadedMods[mod].items {
            ItemStages.removeItemStage(item);
            ItemStages.addItemStage("disabled", item);
            ItemStages.setUnfamiliarName(LangUtil.translate("greedycraft.stage.disabled_item.name"), item);
            RecipeUtil.remove(item);
            JEI.removeAndHide(item);
            item.addTooltip(game.localize("greedycraft.stage.disabled_item.tooltip"));
        }
    }
}

events.onPlayerLoggedIn(function (event as PlayerLoggedInEvent) {
    var player as IPlayer = event.player;
    if (badModLoaded()) {
        player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.event.anticheat.pls_remove"));
        for mod in disallowedMods {
            if (loadedMods has mod) {
                player.sendChat("§b" + loadedMods[mod].name + "  §e" + loadedMods[mod].version);
            }
        }
    }
});

var potionBlindnessDuration as int = 200;
var potionWitherDuration as int = 200;
var potionWitherAmplifier as int = 4;
var tickInterval40 as int = 40;
var tickInterval600 as int = 600;

events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
    var player = event.player;

    if (!badModLoaded() || event.phase != "END" || event.side != "SERVER") {
        return;
    }

    if (!player.creative && player.world.getWorldTime() % tickInterval40 == 0) {
        player.addPotionEffect(<potion:minecraft:blindness>.makePotionEffect(potionBlindnessDuration, 0, false, false));
        player.addPotionEffect(<potion:minecraft:wither>.makePotionEffect(potionWitherDuration, potionWitherAmplifier, false, false));
    }
    
    if (!player.creative && player.world.getWorldTime() % tickInterval600 == 0) {
        server.commandManager.executeCommand(server, "/clear " + player.name);
        server.commandManager.executeCommand(server, "/kill " + player.name);
        player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.event.anticheat.pls_remove"));
        for mod in disallowedMods {
            if (loadedMods has mod) {
                player.sendChat("§b" + loadedMods[mod].name + "  §e" + loadedMods[mod].version);
            }
        }
    }
});
