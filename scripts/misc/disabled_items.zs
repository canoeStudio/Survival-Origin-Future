/*
 * This script is created for the vsaccr modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 50

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import mods.ItemStages;
import mods.jei.JEI;

import scripts.util.recipes as RecipeUtil;
import scripts.util.lang as LangUtil;

val disabledItems as IIngredient[] = [
    
] as IIngredient[];


for ingredient in disabledItems {
    ItemStages.removeItemStage(ingredient);
    ItemStages.addItemStage("disabled", ingredient);
    ItemStages.setUnfamiliarName(LangUtil.translate("vsaccr.stage.disabled_item.name"), ingredient);
    for item in ingredient.items {
        RecipeUtil.remove(item);
        JEI.removeAndHide(item);
        item.addTooltip(game.localize("vsaccr.stage.disabled_item.tooltip"));
    }
}

for item in loadedMods["jaopca"].items {
    if(item.definition.id.startsWith("jaopca:block_crystalcluster")) {
        recipes.remove(item);
        val entryName = item.definition.id.substring("jaopca:block_crystalcluster".length());
        val oreName = "jaopca:item_crystalabyss" + entryName;
        val crystalItem = itemUtils.getItem(oreName);
        if(!isNull(crystalItem)) {
            recipes.addShapeless("jaopca_fix_" + entryName, item, [crystalItem, crystalItem, crystalItem, crystalItem, crystalItem, crystalItem, crystalItem, crystalItem, crystalItem]);
        }
        print("Removing broken JAOPCA recipe: " + item.definition.id + " Replacing with " + oreName);
    }
}
