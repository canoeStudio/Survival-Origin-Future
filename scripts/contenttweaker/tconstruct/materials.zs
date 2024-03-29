/*
 * All Rights Reserved: Canoe Studio (2020-2023)
 * Unless expressly stated in writing by Canoe Studio, all content contained in this document, including but not limited to text, graphics, images, audio, and video files, is protected by copyright law and other intellectual property laws. Without permission, no part of this document may be reproduced, modified, distributed, published, displayed, or used in any other way.
 * Canoe Studio retains full ownership of its brand, trademarks, and logos, among other intellectual property rights. Without the explicit written permission of Canoe Studio, no one may use or display the brand, trademarks, or logos of Canoe Studio.
 * Canoe Studio reserves the right to modify, update, and supplement this document to ensure its accuracy and completeness. Canoe Studio shall not be liable for any errors or omissions in this document.
 */ 

#loader contenttweaker 

#modloaded tconstruct
#modloaded conarm
#modloaded plustic
#modloaded tconevo
#modloaded mysticalagriculture

#priority 2200


import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;

import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.conarm.ExtendedMaterialBuilder;

function getDrawSpeed(inversed as float) as float {
    return (1.0f / inversed as float) as float;
}


val sakura_diamond = MaterialBuilder.create("sakura_diamond");
sakura_diamond.color = Color.fromHex("ff80ab").getIntColor(); 
sakura_diamond.craftable = true;
sakura_diamond.castable = false;
sakura_diamond.representativeItem = <item:sakura:sakura_diamond>;
sakura_diamond.addItem(<ore:gemDiamondPink>);
sakura_diamond.localizedName = game.localize("vsaccr.tconstruct.material.sakura_diamond.name");
sakura_diamond.addHeadMaterialStats(1700, 6.3, 6.5, 3);
sakura_diamond.addHandleMaterialStats(1.25, 750);
sakura_diamond.addExtraMaterialStats(600);
sakura_diamond.addBowMaterialStats(getDrawSpeed(1.1) as float, 1.2, 4);
sakura_diamond.addProjectileMaterialStats();
sakura_diamond.register();

val ender_biotite = MaterialBuilder.create("ender_biotite");
ender_biotite.color = Color.fromHex("212121").getIntColor(); 
ender_biotite.craftable = true;
ender_biotite.castable = false;
ender_biotite.representativeItem = <item:quark:biotite>;
ender_biotite.addItem(<ore:gemEnderBiotite>);
ender_biotite.localizedName = game.localize("vsaccr.tconstruct.material.ender_biotite.name");
ender_biotite.addHeadMaterialStats(720, 11.5, 11.2, 5);
ender_biotite.addHandleMaterialStats(1.35, 700);
ender_biotite.addExtraMaterialStats(800);
ender_biotite.addBowMaterialStats(getDrawSpeed(1.4) as float, 1.5, 7.8);
ender_biotite.addProjectileMaterialStats();
ender_biotite.register();

val diamond = MaterialBuilder.create("diamond");
diamond.color = Color.fromHex("18ffff").getIntColor(); 
diamond.craftable = true;
diamond.castable = false;
diamond.representativeItem = <item:minecraft:diamond>;
diamond.addItem(<ore:gemDiamond>);
diamond.localizedName = game.localize("vsaccr.tconstruct.material.diamond.name");
diamond.addHeadMaterialStats(800, 6.2, 5.7, 3);
diamond.addHandleMaterialStats(1.3, 600);
diamond.addExtraMaterialStats(1250);
diamond.addBowMaterialStats(getDrawSpeed(1.65) as float, 1.2, 7.0);
diamond.addProjectileMaterialStats();
diamond.register();

val scarlite = MaterialBuilder.create("scarlite");
scarlite.color = Color.fromHex("f44336").getIntColor(); 
scarlite.craftable = true;
scarlite.castable = false;
scarlite.representativeItem = <item:defiledlands:scarlite>;
scarlite.addItem(<ore:gemScarlite>);
scarlite.localizedName = game.localize("vsaccr.tconstruct.material.scarlite.name");
scarlite.addHeadMaterialStats(140, 3.5, 7.0, 3);
scarlite.addHandleMaterialStats(1.2, 100);
scarlite.addExtraMaterialStats(80);
scarlite.addBowMaterialStats(getDrawSpeed(1.5) as float, 1.0, 2.5);
scarlite.addProjectileMaterialStats();
scarlite.register();

val chocolate = MaterialBuilder.create("chocolate");
chocolate.color = Color.fromHex("795548").getIntColor(); 
chocolate.craftable = true;
chocolate.castable = true;
chocolate.addItem(<ore:foodChocolate>);
chocolate.representativeItem = <item:candymod:chocolate_bar>;
chocolate.liquid = <liquid:liquid_chocolate>;
chocolate.localizedName = game.localize("vsaccr.tconstruct.material.chocolate.name");
chocolate.addHeadMaterialStats(20, 2.6, 1.2, 0);
chocolate.addHandleMaterialStats(0.2, 40);
chocolate.addExtraMaterialStats(30);
chocolate.addBowMaterialStats(getDrawSpeed(3.0) as float, 1.0, 1.0);
chocolate.addProjectileMaterialStats();
chocolate.register();

val bedrock = MaterialBuilder.create("bedrock");
bedrock.color = Color.fromHex("424242").getIntColor(); 
bedrock.craftable = true;
bedrock.castable = false;
bedrock.representativeItem = <item:minecraft:bedrock>;
bedrock.addItem(<ore:bedrock>);
bedrock.localizedName = game.localize("vsaccr.tconstruct.material.bedrock.name");
bedrock.addHeadMaterialStats(8400, 30.4, 28.2, 10);
bedrock.addHandleMaterialStats(3.4, 1000);
bedrock.addExtraMaterialStats(1000);
bedrock.addBowMaterialStats(getDrawSpeed(16) as float, 8, 150);
bedrock.addProjectileMaterialStats();
bedrock.register();

val coal = MaterialBuilder.create("coal");
coal.color = Color.fromHex("212121").getIntColor(); 
coal.craftable = true;
coal.castable = false;
coal.representativeItem = <item:minecraft:coal>;
coal.addItem(<ore:coal>);
coal.localizedName = game.localize("vsaccr.tconstruct.material.coal.name");
coal.addHeadMaterialStats(10, 3.5, 1.2, 0);
coal.addHandleMaterialStats(0.1, 12);
coal.addExtraMaterialStats(15);
coal.addBowMaterialStats(getDrawSpeed(1.8) as float, 1.0, 0.1);
coal.addProjectileMaterialStats();
coal.register();

val pumpkin = MaterialBuilder.create("pumpkin");
pumpkin.color = Color.fromHex("fb8c00").getIntColor(); 
pumpkin.craftable = true;
pumpkin.castable = false;
pumpkin.representativeItem = <item:minecraft:pumpkin>;
pumpkin.addItem(<item:minecraft:pumpkin>);
pumpkin.localizedName = game.localize("vsaccr.tconstruct.material.pumpkin.name");
pumpkin.addHeadMaterialStats(200, 3.0, 4.6, 1);
pumpkin.addHandleMaterialStats(0.6, 140);
pumpkin.addExtraMaterialStats(130);
pumpkin.addBowMaterialStats(getDrawSpeed(1.4) as float, 1.2, 1.4);
pumpkin.addProjectileMaterialStats();
pumpkin.register();

