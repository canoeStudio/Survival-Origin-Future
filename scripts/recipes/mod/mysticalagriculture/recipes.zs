/*
 * This script is created for the VSACCR modpack by Canoe Studio.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

import moretweaker.draconicevolution.FusionCrafting;

//projecte and mysticalagriculture mod removed recipes
recipes.remove(<mysticalagradditions:insanium:1>);
recipes.remove(<mysticalagriculture:crafting:21>);
recipes.remove(<mysticalagriculture:crafting:20>);
recipes.remove(<mysticalagriculture:crafting:19>);
recipes.remove(<mysticalagriculture:crafting:18>);
recipes.remove(<mysticalagriculture:crafting:17>);
recipes.remove(<mysticalagriculture:crafting:16>);

//ArcaneWorkbench mysticalagriculture recipes
FusionCrafting.add(<mysticalagradditions:insanium:1>, <mysticalagriculture:crafting:21>, FusionCrafting.BASIC, 10000000, [<mysticalagradditions:storage:1>,<mysticalagradditions:storage:1>,<mysticalagradditions:storage:1>, <mysticalagradditions:storage:1>]);
FusionCrafting.add(<mysticalagriculture:crafting:21>, <mysticalagriculture:crafting:20>, FusionCrafting.BASIC, 10000000, [<mysticalagriculture:storage:4>,<mysticalagriculture:storage:4>,<mysticalagriculture:storage:4>, <mysticalagriculture:storage:4>]);
FusionCrafting.add(<mysticalagriculture:crafting:20>, <mysticalagriculture:crafting:19>, FusionCrafting.BASIC, 10000000, [<mysticalagriculture:storage:3>,<mysticalagriculture:storage:3>,<mysticalagriculture:storage:3>, <mysticalagriculture:storage:3>]);
FusionCrafting.add(<mysticalagriculture:crafting:19>, <mysticalagriculture:crafting:18>, FusionCrafting.BASIC, 10000000, [<mysticalagriculture:storage:2>,<mysticalagriculture:storage:2>,<mysticalagriculture:storage:2>, <mysticalagriculture:storage:2>]);
FusionCrafting.add(<mysticalagriculture:crafting:18>, <mysticalagriculture:crafting:17>, FusionCrafting.BASIC, 10000000, [<mysticalagriculture:storage:1>,<mysticalagriculture:storage:1>,<mysticalagriculture:storage:1>, <mysticalagriculture:storage:1>]);
FusionCrafting.add(<mysticalagriculture:crafting:17>, <mysticalagriculture:crafting:16>, FusionCrafting.BASIC, 10000000, [<mysticalagriculture:storage>,<mysticalagriculture:storage>,<mysticalagriculture:storage>, <mysticalagriculture:storage>]);
FusionCrafting.add(<mysticalagriculture:crafting:16>, <minecraft:wheat_seeds>, FusionCrafting.BASIC, 10000000, [<mysticalagriculture:ingot_storage:0>,<mysticalagriculture:ingot_storage:0>,<mysticalagriculture:ingot_storage:0>, <mysticalagriculture:ingot_storage:0>]);