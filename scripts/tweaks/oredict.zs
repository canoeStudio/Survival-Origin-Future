/*
 * All Rights Reserved: Canoe Studio (2020-2023)
 * Unless expressly stated in writing by Canoe Studio, all content contained in this document, including but not limited to text, graphics, images, audio, and video files, is protected by copyright law and other intellectual property laws. Without permission, no part of this document may be reproduced, modified, distributed, published, displayed, or used in any other way.
 * Canoe Studio retains full ownership of its brand, trademarks, and logos, among other intellectual property rights. Without the explicit written permission of Canoe Studio, no one may use or display the brand, trademarks, or logos of Canoe Studio.
 * Canoe Studio reserves the right to modify, update, and supplement this document to ensure its accuracy and completeness. Canoe Studio shall not be liable for any errors or omissions in this document.
 */ 



#priority 0

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import crafttweaker.game.IGame;
import crafttweaker.oredict.IOreDictEntry;

import scripts.util.oredict as OredictUtil;



var oredictMap as IIngredient[][IOreDictEntry] = {
    <ore:glodentool> : [
        <minecraft:golden_axe>,
        <minecraft:golden_sword>,
        <minecraft:golden_helmet>,
        <minecraft:golden_chestplate>,
        <minecraft:golden_leggings>,
        <minecraft:golden_boots>,
        <minecraft:golden_shovel>,
        <minecraft:golden_pickaxe>,
        <minecraft:golden_hoe>
    ],
    <ore:irontool>  :  [
        <minecraft:iron_helmet>,
        <minecraft:iron_chestplate>,
        <minecraft:iron_shovel>,
        <minecraft:iron_pickaxe>,
        <minecraft:iron_axe>,
        <minecraft:iron_sword>,
        <minecraft:iron_boots>,
        <minecraft:iron_hoe>,
        <minecraft:iron_leggings>
    ]


};

var removeMap as IIngredient[][IOreDictEntry] = {
    <ore:cobblestone> : [<quark:biome_cobblestone:1>]
};

for item in loadedMods["weeeflowers"].items {
    if (item.definition.id.replace("weeeflowers", "").contains("flower")) {
        OredictUtil.addOredictIngredient(<ore:listAllflower>, item);
    }
}



for oredict in oredictMap {
    var ingredients as IIngredient[] = oredictMap[oredict];
    OredictUtil.addOredictIngredients(oredict, ingredients);
}

for oredict in removeMap {
    var ingredients as IIngredient[] = oredictMap[oredict];
    OredictUtil.removeOredictIngredients(oredict, ingredients);
}
