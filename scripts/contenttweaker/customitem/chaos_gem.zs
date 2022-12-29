#priority 2

#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;



var chaosGem= VanillaFactory.createItem("chaos_gem");
chaosGem.glowing = true;
chaosGem.maxStackSize = 64;
chaosGem.creativeTab = <creativetab:misc>;
chaosGem.register();

var contaminatedchaosGems= VanillaFactory.createItem("contaminated_chaos_gems");
contaminatedchaosGems =true;
contaminatedchaosGems.maxStackSize =64;
contaminatedchaosGems.creativeTab = <creativeTab:misc>;
contaminatedchaosGems.register();
