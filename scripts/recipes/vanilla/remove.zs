/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 4002


import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import scripts.util.recipes as RecipeUtil;

val removedRecipes as IIngredient[] = [
    <minecraft:crafting_table>,
    <croparia:fruit_start>
   
];

val removedRecipeNames as string[] = [
    "projecte:conversions/emerald_to_diamond",
    "projecte:conversions/diamond_to_emerald",
    "projecte:conversions/diamond_to_iron",
    "projecte:conversions/gold_to_diamond",
    "projecte:conversions/iron_to_gold",
    "projecte:conversions/gold_to_iron",
    "extrautils2:watering_can",
    "thaumcraft:ambertoblock",
    "prefab:ender_gateway",
    "botania:flighttiara_0",
    "botania:flighttiara_1",
    "botania:flighttiara_2",
    "botania:flighttiara_3",
    "botania:flighttiara_4",
    "botania:flighttiara_5",
    "botania:flighttiara_6",
    "botania:flighttiara_7",
    "botania:flighttiara_8",
    "extrabotany:recipe_coregod",
    "natura:common/string",
    "harvestcraft:string_cropflax",
    "mysticalagriculture:core/compression/supremium_essence_block_to",
    "mysticalagriculture:core/compression/superium_essence_block_to",
    "mysticalagriculture:core/compression/prudentium_essence_block_to",
    "mysticalagriculture:core/compression/intermedium_essence_block_to",
    "mysticalagradditions:insanium_essence_block_to_infusion"
];

for ingredient in removedRecipes {
    RecipeUtil.remove(ingredient);
}

for recipeName in removedRecipeNames {
    RecipeUtil.removeByRecipeName(recipeName);
}
