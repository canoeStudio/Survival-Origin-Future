#priority 1

#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;



var twilightGem= VanillaFactory.createItem("twilight_gem");
twilightGem.glowing = true;
twilightGem.maxStackSize = 64;
twilightGem.creativeTab = <creativetab:misc>;
twilightGem.register();


