#priority 2

#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;



var chaosGem= VanillaFactory.createItem("chaos_gem");
chaosGem.glowing = true;
chaosGem.maxStackSize = 64;
chaosGem.creativeTab = <creativetab:misc>;
chaosGem.register();

