/*
 * All Rights Reserved: Canoe Studio (2020-2023)
 * Unless expressly stated in writing by Canoe Studio, all content contained in this document, including but not limited to text, graphics, images, audio, and video files, is protected by copyright law and other intellectual property laws. Without permission, no part of this document may be reproduced, modified, distributed, published, displayed, or used in any other way.
 * Canoe Studio retains full ownership of its brand, trademarks, and logos, among other intellectual property rights. Without the explicit written permission of Canoe Studio, no one may use or display the brand, trademarks, or logos of Canoe Studio.
 * Canoe Studio reserves the right to modify, update, and supplement this document to ensure its accuracy and completeness. Canoe Studio shall not be liable for any errors or omissions in this document.
 */ 


#priority 32002

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import crafttweaker.game.IGame;
import crafttweaker.oredict.IOreDictEntry;

function addOredictIngredient(oredict as IOreDictEntry, ingredient as IIngredient) {
    oredict.addItems(ingredient.items);
}

function removeOredictIngredient(oredict as IOreDictEntry, ingredient as IIngredient) {
    oredict.removeItems(ingredient.items);
}

function addOredictIngredients(oredict as IOreDictEntry, ingredients as IIngredient[]) {
    for ingredient in ingredients {
        oredict.addItems(ingredient.items);
    }
}

function removeOredictIngredients(oredict as IOreDictEntry, ingredients as IIngredient[]) {
    for ingredient in ingredients {
        oredict.removeItems(ingredient.items);
    }
}
