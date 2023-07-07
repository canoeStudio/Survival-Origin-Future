/*
 * This script is created for the VSACCR modpack by Canoe Studio and Hope Team.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 4000

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import scripts.util.recipes as RecipeUtil;

////////////////////////////////
//                            //
//      Shaped   Recipes      //
//                            // 
////////////////////////////////

RecipeUtil.addShaped("minecraft_furnace", <minecraft:furnace>, [
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
    [<minecraft:cobblestone>, <ore:blockClay>, <minecraft:cobblestone>],
    [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]
]);



/* Templates

RecipeUtil.addShaped("", <>, [
    [null, null, null],
    [null, null, null],
    [null, null, null]
]);

RecipeUtil.addShaped("", <>, [
    [],
    [],
    []
]);
*/
