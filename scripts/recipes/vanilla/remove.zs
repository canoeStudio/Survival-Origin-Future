/*
 * All Rights Reserved: Canoe Studio (2020-2023)
 * Unless expressly stated in writing by Canoe Studio, all content contained in this document, including but not limited to text, graphics, images, audio, and video files, is protected by copyright law and other intellectual property laws. Without permission, no part of this document may be reproduced, modified, distributed, published, displayed, or used in any other way.
 * Canoe Studio retains full ownership of its brand, trademarks, and logos, among other intellectual property rights. Without the explicit written permission of Canoe Studio, no one may use or display the brand, trademarks, or logos of Canoe Studio.
 * Canoe Studio reserves the right to modify, update, and supplement this document to ensure its accuracy and completeness. Canoe Studio shall not be liable for any errors or omissions in this document.
 */ 


#priority 4002


import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import scripts.util.recipes as RecipeUtil;

val removedRecipes as IIngredient[] = [
    <waystones:warp_stone>,
    <projecte:item.pe_alchemical_bag>,
    <projecte:item.pe_alchemical_bag:1>,
    <projecte:item.pe_alchemical_bag:2>,
    <projecte:item.pe_alchemical_bag:3>,
    <projecte:item.pe_alchemical_bag:4>,
    <projecte:item.pe_alchemical_bag:5>,
    <projecte:item.pe_alchemical_bag:6>,
    <projecte:item.pe_alchemical_bag:7>,
    <projecte:item.pe_alchemical_bag:8>,
    <projecte:item.pe_alchemical_bag:9>,
    <projecte:item.pe_alchemical_bag:10>,
    <projecte:item.pe_alchemical_bag:11>,
    <projecte:item.pe_alchemical_bag:12>,
    <projecte:item.pe_alchemical_bag:13>,
    <projecte:item.pe_alchemical_bag:14>,
    <projecte:item.pe_alchemical_bag:15>,
    <projecte:item.pe_philosophers_stone>,
    <projecte:transmutation_table>,
    <projecte:interdiction_torch>,
    <projecte:item.pe_transmutation_tablet>,
    <projectex:arcane_tablet>,
    <fd:smoker>,
    <minecraft:stone_slab:3>,
    <minecraft:stone_stairs>,
    <appliedenergistics2:sky_stone_stairs>,
    <appliedenergistics2:sky_stone_slab>,
    <appliedenergistics2:smooth_sky_stone_stairs>,
    <appliedenergistics2:sky_stone_brick_stairs>,
    <appliedenergistics2:sky_stone_small_brick_stairs>,
    <appliedenergistics2:smooth_sky_stone_slab>,
    <appliedenergistics2:sky_stone_brick_slab>,
    <appliedenergistics2:sky_stone_small_brick_slab>,
    <minecraft:brick_stairs>,
    <minecraft:stone_brick_stairs>,
    <minecraft:stone_slab:4>,
    <minecraft:stone_slab:5>,
    <minecraft:oak_stairs>,
    <minecraft:wooden_slab>,
    <minecraft:wooden_slab:1>,
    <minecraft:wooden_slab:2>,
    <minecraft:wooden_slab:3>,
    <minecraft:wooden_slab:4>,
    <minecraft:wooden_slab:5>,
    <minecraft:spruce_stairs>,
    <minecraft:birch_stairs>,
    <minecraft:jungle_stairs>,
    <minecraft:acacia_stairs>,
    <minecraft:dark_oak_stairs>,
    <twilightforest:uncrafting_table>,
    <actuallyadditions:block_tiny_torch>,
    <cyclicmagic:ender_eye_orb>,
    <globalxp:xp_block>,
    <cyclicmagic:storage_bag>,
    <cyclicmagic:heart_food>,
    <cyclicmagic:ender_water>,
    <prefab:item_monster_masher>,
    <cyclicmagic:block_miner_smart>,
    <actuallyadditions:item_crafter_on_a_stick>,
    <magicfeather:magicfeather>,
    <actuallyadditions:block_giant_chest>,
    <actuallyadditions:block_giant_chest_medium>,
    <actuallyadditions:block_giant_chest_large>,
    <danknull:dank_null_panel_0>,
    <danknull:dank_null_panel_1>,
    <danknull:dank_null_panel_2>,
    <danknull:dank_null_panel_3>,
    <danknull:dank_null_panel_4>,
    <danknull:dank_null_panel_5>,
    <danknull:dank_null_0>,
    <danknull:dank_null_1>,
    <danknull:dank_null_2>,
    <danknull:dank_null_3>,
    <danknull:dank_null_4>,
    <danknull:dank_null_5>,
    <pouchofunknown:pouch> 
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

mods.avaritia.ExtremeCrafting.remove(<avaritiatweaks:infinitato>);
mods.avaritia.ExtremeCrafting.remove(<avaritia:neutronium_compressor>);
