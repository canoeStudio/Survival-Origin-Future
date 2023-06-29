/*
 * This script is created for the VSACCR modpack by Canoe Studio.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
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