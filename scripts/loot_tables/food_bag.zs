/*
 * All Rights Reserved: Canoe Studio (2020-2023)
 * Unless expressly stated in writing by Canoe Studio, all content contained in this document, including but not limited to text, graphics, images, audio, and video files, is protected by copyright law and other intellectual property laws. Without permission, no part of this document may be reproduced, modified, distributed, published, displayed, or used in any other way.
 * Canoe Studio retains full ownership of its brand, trademarks, and logos, among other intellectual property rights. Without the explicit written permission of Canoe Studio, no one may use or display the brand, trademarks, or logos of Canoe Studio.
 * Canoe Studio reserves the right to modify, update, and supplement this document to ensure its accuracy and completeness. Canoe Studio shall not be liable for any errors or omissions in this document.
 */ 

#priority 72


import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import loottweaker.LootTweaker;

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;  

import scripts.util.loot_tables as LootUtil;

static itemBlacklist as IItemStack[] = [
    <bibliocraft:bibliocreativelock>
] as IItemStack[];

function isBlacklisted(target as IItemStack) as bool {
    for item in itemBlacklist {
        if (target.definition.id == item.definition.id && target.metadata == item.metadata) {
            if (!isNull(item.tag)) {
                if (item.tag as IData == target.tag as IData) {
                    return true;
                }
            } else {
                return true;
            }
        }
    }
    return false;
}

val foodTable = LootTweaker.newTable("loottweaker:food_bag_loot_table");
var foodTableMainPool = foodTable.addPool("main", 6, 14, 0, 0);
for ingredient in foodList {
    for item in ingredient.items {
        if (!LootUtil.isBlacklisted(item)) {
            if (item.metadata != 32767) {
                foodTableMainPool.addItemEntry(item, 1, 1, [Functions.setCount(1, 4)], []);
            }
        }
    }
}
