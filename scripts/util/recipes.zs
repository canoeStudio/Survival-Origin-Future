/*
 * All Rights Reserved: Canoe Studio (2020-2023)
 * Unless expressly stated in writing by Canoe Studio, all content contained in this document, including but not limited to text, graphics, images, audio, and video files, is protected by copyright law and other intellectual property laws. Without permission, no part of this document may be reproduced, modified, distributed, published, displayed, or used in any other way.
 * Canoe Studio retains full ownership of its brand, trademarks, and logos, among other intellectual property rights. Without the explicit written permission of Canoe Studio, no one may use or display the brand, trademarks, or logos of Canoe Studio.
 * Canoe Studio reserves the right to modify, update, and supplement this document to ensure its accuracy and completeness. Canoe Studio shall not be liable for any errors or omissions in this document.
 */ 

#priority 32010


import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

function addShaped(name as string, output as IItemStack, recipe as IIngredient[][]) {
    // TODO: Handle shaped recipe here

    recipes.addShaped(name, output, recipe);
}

function addShapeless(name as string, output as IItemStack, recipe as IIngredient[]) {
    // TODO: Handle shapeless recipe here

    recipes.addShapeless(name, output, recipe);
}

function addShapelessOf(name as string, output as IItemStack, ingredient as IIngredient, count as int) {
    var recipe as IIngredient[] = [];
    for i in 0 to count {
        recipe += ingredient;
    }
    addShapeless(name, output, recipe);
}

function remove(output as IIngredient) {
    // TODO: Handle removed recipe here

    recipes.remove(output * 1);
}

function removeByRecipeName(recipeName as string) {
    // TODO: Handle removed recipe here
    
    recipes.removeByRecipeName(recipeName);
}

function removeAndAdd(name as string, output as IItemStack, recipe as IIngredient[][]) {
    remove(output);
    addShaped(name, output, recipe);
}

function removeAndAddShapeless(name as string, output as IItemStack, recipe as IIngredient[]) {
    remove(output);
    addShapeless(name, output, recipe);
}


function addCompressingRecipe(original as IItemStack, compressed as IItemStack) {
    recipes.addShaped(original.definition.id.replace(":", "_") + "_compress", compressed, [
        [original, original, original], 
        [original, original, original], 
        [original, original, original]
    ] as IIngredient[][]);
    recipes.addShapeless(original.definition.id.replace(":", "_") + "_decompress", original * 9, [compressed] as IIngredient[]);
}

function addDyeingRecipe(name as string, input as IIngredient, output as IItemStack, reversedOrder as bool) {
    for i in 0 to 16 {
        if (reversedOrder) {
            addShapeless(name + "_" + i, output.withDamage(15 - i), [input, dyeList[i]]);
        } else {
            addShapeless(name + "_" + i, output.withDamage(i), [input, dyeList[i]]);
        }
    }
}
