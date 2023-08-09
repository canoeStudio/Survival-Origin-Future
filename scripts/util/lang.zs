/*
 * All Rights Reserved: Canoe Studio (2020-2023)
 * Unless expressly stated in writing by Canoe Studio, all content contained in this document, including but not limited to text, graphics, images, audio, and video files, is protected by copyright law and other intellectual property laws. Without permission, no part of this document may be reproduced, modified, distributed, published, displayed, or used in any other way.
 * Canoe Studio retains full ownership of its brand, trademarks, and logos, among other intellectual property rights. Without the explicit written permission of Canoe Studio, no one may use or display the brand, trademarks, or logos of Canoe Studio.
 * Canoe Studio reserves the right to modify, update, and supplement this document to ensure its accuracy and completeness. Canoe Studio shall not be liable for any errors or omissions in this document.
 */ 

#priority 32000


import crafttweaker.player.IPlayer;
import crafttweaker.text.ITextComponent;

import mods.zenutils.I18n;

import scripts.util.versions as VersionUtil;
 
function getLanguage() as string {
    var lang as string = game.localize("vsaccr.language");
    var ret as string = "en_us";
    var versionGroup = VersionUtil.getVersionGroup();

    if (isNull(lang) || lang == "vsaccr.language" || lang == "") {
        if (DEFAULT_LANGUAGE.trim() == "") {
            if (versionGroup == 0) {
                ret = "zh_cn";
            } else if (versionGroup == 1) {
                ret = "en_us";
            } else if (versionGroup == 2) {
                ret = "fr_fr";
            } else if (versionGroup == 3) {
                ret = "es_es";
            } else if (versionGroup == 4) {
                ret = "zh_tw";
            }

    
        } else {
            ret = DEFAULT_LANGUAGE.trim();
        }
    } else {
        if (DEFAULT_LANGUAGE.trim() == "") {
            ret = lang;
        } else {
            ret = DEFAULT_LANGUAGE.trim();
        }
    }

    var SUPPORTED_LANGUAGES = {
        "en_us": true,
        "zh_cn": true,
        "fr_fr": true,
        "es_es": true,
        "zh_tw": true,
    };

    if (!SUPPORTED_LANGUAGES.hasOwnProperty(ret)) {
        ret = "en_us";
    }

    return ret;
}




