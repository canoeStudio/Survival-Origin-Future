/*
 * All Rights Reserved: Canoe Studio (2020-2023)
 * Unless expressly stated in writing by Canoe Studio, all content contained in this document, including but not limited to text, graphics, images, audio, and video files, is protected by copyright law and other intellectual property laws. Without permission, no part of this document may be reproduced, modified, distributed, published, displayed, or used in any other way.
 * Canoe Studio retains full ownership of its brand, trademarks, and logos, among other intellectual property rights. Without the explicit written permission of Canoe Studio, no one may use or display the brand, trademarks, or logos of Canoe Studio.
 * Canoe Studio reserves the right to modify, update, and supplement this document to ensure its accuracy and completeness. Canoe Studio shall not be liable for any errors or omissions in this document.
 */


import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;

var irongroup = ArmorHandler.createArmorGroup("ironarmor", 0.5);
var ironentity = ArmorHandler.createArmorEntity("minecraft:zombie");

irongroup.addEntity(ironentity);
irongroup.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:iron_helmet>, 1, 0.1));
irongroup.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:iron_chestplate>, 1, 0.1));
irongroup.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:iron_leggings>, 1, 0.1));
irongroup.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:iron_boots>, 1, 0.1));
irongroup.addArmor(ArmorHandler.createArmorSlot("mainhand", <minecraft:iron_sword>, 1, 0.1));
irongroup.addGameStage("iron");

