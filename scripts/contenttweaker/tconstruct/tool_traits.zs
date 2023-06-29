




import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityMob;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;
import crafttweaker.world.IBlockPos;

import mods.ctutils.utils.Math;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.tconstruct.Trait;
import mods.contenttweaker.tconstruct.TraitDataRepresentation;
import mods.contenttweaker.tconstruct.TraitBuilder;
import mods.zenutils.I18n;



val pinkyTrait = TraitBuilder.create("pinky");
pinkyTrait.color = Color.fromHex("ff80ab").getIntColor(); 
pinkyTrait.localizedName = game.localize("vsaccr.tconstruct.tool_trait.pinkyTrait.name");
pinkyTrait.localizedDescription = game.localize("vsaccr.tconstruct.tool_trait.pinkyTrait.desc");
pinkyTrait.onBlockHarvestDrops = function(trait, tool, event) {
    if (!event.silkTouch && event.block.definition.id == "minecraft:diamond_ore") {
        if (Math.random() < 0.2) {
            event.addItem(<item:sakura:sakura_diamond>);
        }-
    }
};
pinkyTrait.register();
