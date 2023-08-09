/*
 * All Rights Reserved: Canoe Studio (2020-2023)
 * Unless expressly stated in writing by Canoe Studio, all content contained in this document, including but not limited to text, graphics, images, audio, and video files, is protected by copyright law and other intellectual property laws. Without permission, no part of this document may be reproduced, modified, distributed, published, displayed, or used in any other way.
 * Canoe Studio retains full ownership of its brand, trademarks, and logos, among other intellectual property rights. Without the explicit written permission of Canoe Studio, no one may use or display the brand, trademarks, or logos of Canoe Studio.
 * Canoe Studio reserves the right to modify, update, and supplement this document to ensure its accuracy and completeness. Canoe Studio shall not be liable for any errors or omissions in this document.
 */ 

#priority 31999


import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import mods.ItemStages;

static stageTwilightShield as Stage = ZenStager.initStage("twilight_shield");
static stageHardmode as Stage = ZenStager.initStage("hardmode");
static stageSkilledEngineer as Stage = ZenStager.initStage("skilled_engineer");
static stageNether as Stage = ZenStager.initStage("nether");
static stageNoviceEngineer as Stage = ZenStager.initStage("novice_engineer");
static stageDisabled as Stage = ZenStager.initStage("disabled");
static stageInfinity as Stage = ZenStager.initStage("wielder_of_infinity");
static stageWitherSlayer as Stage = ZenStager.initStage("wither_slayer");
static stageCosmicSword as Stage = ZenStager.initStage("sword_of_cosmos");
static stageAbyssalConquerer as Stage = ZenStager.initStage("abyssal_conquerer");
static stageMasterEngineer as Stage = ZenStager.initStage("master_engineer");
static stageFusionMatrix as Stage = ZenStager.initStage("fusion_matrix");
static stageChallenger1 as Stage = ZenStager.initStage("challenger_a");
static stageChallenger2 as Stage = ZenStager.initStage("challenger_b");
static stageChallenger3 as Stage = ZenStager.initStage("challenger_c");
static stageChallenger4 as Stage = ZenStager.initStage("challenger_d");
static stageChallenger5 as Stage = ZenStager.initStage("challenger_e");
static stageChallenger6 as Stage = ZenStager.initStage("challenger_f");
static stageChallenger7 as Stage = ZenStager.initStage("challenger_g");
static stageChallenger8 as Stage = ZenStager.initStage("challenger_all");
static stageFearlessMan as Stage = ZenStager.initStage("fearless_man");
static stageNoviceWizard as Stage = ZenStager.initStage("novice_wizard");
static stageSkilledWizard as Stage = ZenStager.initStage("skilled_wizard");
static stageMasterWizard as Stage = ZenStager.initStage("master_wizard");
static stageEnderCharm as Stage = ZenStager.initStage("ender_charm");
static stageTransmutationTable as Stage = ZenStager.initStage("transmutation_table");
static stageEnergyMatter as Stage = ZenStager.initStage("energy_matter_core");
static stageAwakened as Stage = ZenStager.initStage("awakened");
static stageWyvern as Stage = ZenStager.initStage("wyvern");
static stageGettingStarted as Stage = ZenStager.initStage("getting_started");
static stageChaotic as Stage = ZenStager.initStage("chaotic");
static stageChaoticDominator as Stage = ZenStager.initStage("chaotic_dominator");
static stageExpert as Stage = ZenStager.initStage("expert");
static stageDescendantOfTheSun as Stage = ZenStager.initStage("descendant_of_the_sun");
static stageGraduated as Stage = ZenStager.initStage("graduated");

static zenStageMap as Stage[string] = ZenStager.getStageMap();

function restageItem(stage as string, item as IIngredient) {
    ItemStages.removeItemStage(item);
    ItemStages.addItemStage(stage, item);
}

function restageItems(stage as string, items as IIngredient[]) {
    for item in items {
        ItemStages.removeItemStage(item);
        ItemStages.addItemStage(stage, item);
    }
}

function removeItemStages(items as IIngredient[]) {
    for item in items {
        ItemStages.removeItemStage(item);
    }
}
