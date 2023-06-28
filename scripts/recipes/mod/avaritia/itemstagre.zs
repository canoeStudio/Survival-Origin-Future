/*
 * This script is created for the VSACCR modpack by Canoe Studio.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

import mods.ItemStages.addItemStage;  
import crafttweaker.item.IItemStack;

//avaritia gamestages//

var item as IItemStack[]=[
<avaritia:infinity_helmet>,
<avaritia:infinity_pants>,
<avaritia:infinity_chestplate>,
<avaritia:infinity_boots>,
<avaritia:infinity_sword>,
<avaritia:infinity_bow>,
<avaritia:infinity_pickaxe>.withTag({ench: [{lvl: 10 as short, id: 35}]}),
<avaritia:infinity_axe>,
<avaritia:infinity_hoe>,
<avaritia:infinity_shovel>

]; 
 
for i in item{
addItemStage("avaritia",i);
}


