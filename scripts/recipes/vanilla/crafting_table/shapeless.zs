/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 4000


import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import scripts.util.recipes as RecipeUtil;
import scripts.util.lang as LangUtil;

val oeEnchantId = <enchantment:oeintegration:oreexcavation>.id as int;

////////////////////////////////
//                            //
//    Shapeless   Recipes     //
//                            //
////////////////////////////////

RecipeUtil.addShapeless("auto_gen_-1011385798", <minecraft:crafting_table>,
    [<tconstruct:tooltables>]
);

/* Template

RecipeUtil.addShapeless("", <>,
    []
);

*/
