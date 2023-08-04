/*
 * All Rights Reserved: Canoe Studio (2020-2023)
 * Unless expressly stated in writing by Canoe Studio, all content contained in this document, including but not limited to text, graphics, images, audio, and video files, is protected by copyright law and other intellectual property laws. Without permission, no part of this document may be reproduced, modified, distributed, published, displayed, or used in any other way.
 * Canoe Studio retains full ownership of its brand, trademarks, and logos, among other intellectual property rights. Without the explicit written permission of Canoe Studio, no one may use or display the brand, trademarks, or logos of Canoe Studio.
 * Canoe Studio reserves the right to modify, update, and supplement this document to ensure its accuracy and completeness. Canoe Studio shall not be liable for any errors or omissions in this document.
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


recipes.addShaped(<actuallyadditions:block_giant_chest_large>, 
[[<prefab:item_bundle_of_timber>, <ore:ingotIridium>, <prefab:item_bundle_of_timber>],
[<ore:ingotIridium>, <actuallyadditions:block_giant_chest_medium>, <ore:ingotIridium>],
[<prefab:item_bundle_of_timber>, <ore:ingotIridium>, <prefab:item_bundle_of_timber>]]
);
recipes.addShaped(<actuallyadditions:block_giant_chest_medium>, 
[[<prefab:item_bundle_of_timber>, <ore:ingotChrome>, <prefab:item_bundle_of_timber>],
[<ore:ingotChrome>, <actuallyadditions:block_giant_chest>, <ore:ingotChrome>], 
[<prefab:item_bundle_of_timber>, <ore:ingotChrome>, <prefab:item_bundle_of_timber>]]
);
recipes.addShaped(<actuallyadditions:block_giant_chest>,
[[<prefab:item_bundle_of_timber>, <ore:ingotIron>, <prefab:item_bundle_of_timber>],
[<ore:ingotIron>, <ore:chest>, <ore:ingotIron>], 
[<prefab:item_bundle_of_timber>, <ore:ingotIron>, <prefab:item_bundle_of_timber>]
]);



RecipeUtil.addShaped("auto_gen_918073950", <waystones:warp_stone>, [
    [<ore:obsidian>, <ore:gemDiamond>, <ore:obsidian>],
    [<ore:gemDiamond>, <ore:enderpearl>, <ore:gemDiamond>],
    [<ore:obsidian>, <ore:gemDiamond>, <ore:obsidian>]
]);
RecipeUtil.addShaped("auto_gen_835170926", <projecte:interdiction_torch>, [
    [<futuremc:soul_fire_torch>, <ore:gemDiamond>, <futuremc:soul_fire_torch>],
    [<ore:gemDiamond>, <ore:shardCrystal>, <ore:gemDiamond>],
    [<minecraft:glowstone>, <minecraft:glowstone>, <minecraft:glowstone>]
]);
RecipeUtil.addShaped("auto_gen_524097316", <globalxp:xp_block>, [
    [<ore:barsIron>, <ore:barsIron>, <ore:barsIron>],
    [<ore:barsIron>, <ore:crystalEmeraldic>, <ore:barsIron>],
    [<ore:barsIron>, <ore:barsIron>, <ore:barsIron>]
]);
RecipeUtil.addShaped("auto_gen_524297316", <cyclicmagic:ender_water>, [
    [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
    [<theaurorian:silentwoodstick>, <minecraft:sponge>, <theaurorian:silentwoodstick>],
    [<theaurorian:silentwoodstick>, <minecraft:sponge>, <theaurorian:silentwoodstick>]
]);
RecipeUtil.addShaped("auto_gen_927183046", <magicfeather:magicfeather>, [
    [<ore:ingotGold>, <mysticalagriculture:crafting:24>, <ore:ingotGold>],
    [<ore:ingotGold>, <minecraft:elytra>, <ore:ingotGold>],
    [<ore:ingotGold>, <mysticalagriculture:crafting:24>, <ore:ingotGold>]
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
