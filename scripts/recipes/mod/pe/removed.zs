/*
 * This script is created for the VSACCR modpack by Canoe Studio and Hope Team.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;

//projecte and projecteEX mod removed all recipes
recipes.removeByMod("projecte");
recipes.removeByMod("projectex");
//ArcaneWorkbench projecte recipes
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("tests_1", "", 50, [<aspect:aqua>, <aspect:ignis>, <aspect:terra>], <projecte:item.pe_covalence_dust>*5, [<ore:rodBlaze>, <ore:dustRedstone>, <ore:nuggetGold>,<ore:ingotIron>,<avaritia:resource:2>]);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("tests_2", "", 100, [<aspect:aqua>, <aspect:ignis>, <aspect:terra>], <projecte:item.pe_covalence_dust:1>*5, [<ore:rodBlaze>, <projecte:item.pe_covalence_dust>, <ore:nuggetGold>,<ore:ingotIron>,<avaritia:resource:2>,<avaritia:resource:2>]);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("tests_3", "", 200, [<aspect:aqua>, <aspect:ignis>, <aspect:terra>], <projecte:item.pe_covalence_dust:2>*5, [<ore:rodBlaze>, <projecte:item.pe_covalence_dust:1>, <ore:nuggetGold>,<ore:ingotIron>,<avaritia:resource:2>,<avaritia:resource:2>,<avaritia:resource:2>]);