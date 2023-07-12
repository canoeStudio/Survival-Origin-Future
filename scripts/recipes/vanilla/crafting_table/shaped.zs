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

RecipeUtil.addShaped("auto_gen_-444867109", <tconstruct:tooltables>, [
    [<ore:plankWood>, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>]
]);
RecipeUtil.addShaped("auto_gen_272915411", <minecraft:crafting_table> * 4, [
    [<ore:workbench>, <ore:workbench>],
    [<ore:workbench>, <ore:workbench>]
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
