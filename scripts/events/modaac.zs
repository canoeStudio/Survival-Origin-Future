/*
 * This script is created for the VSACCR modpack by Canoe Studio.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

//if you find this file and delete it, you're very smart.
#loader crafttweaker reloadableevents
import crafttweaker.block.IBlock;
import crafttweaker.data.IData;
import crafttweaker.event.CommandEvent;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.player.IPlayer;
import crafttweaker.text.ITextComponent;
import mods.ctutils.utils.Math;
import mods.ctutils.world.IGameRules;
import mods.ItemStages;
import mods.jei.JEI;
import mods.zenstages.Stage;
import mods.zenstages.ZenStager;
import mods.zenutils.HexHelper;
import mods.zenutils.I18n;

// Perfectly balanced.
// As everything should be.

var disallowedMods as string[]=[
    "slashblade",
    "slashbladetic",
    "exbot",
    "upsizer",
    "utimatestack",
    "utimatestackplugin",
    "betterbuilderswands"
];

for i in disallowedMods{
    if(loadedMods in i){
        events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
	    val player as IPlayer = event.player;
	        if(!player.world.isRemote()) {
		        player.sendRichTextStatusMessage(ITextComponent.fromTranslation("vsaccr.ia.custom.warn.name"), false);
	        }
        });
    }
}