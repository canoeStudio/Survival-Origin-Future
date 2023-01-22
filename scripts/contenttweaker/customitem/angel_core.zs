#priority 3

#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;



var AngelCore= VanillaFactory.createItem("angel_core");
AngelCore.maxStackSize =64;
AngelCore.creativeTab = <creativeTab:misc>;
AngelCore.register();