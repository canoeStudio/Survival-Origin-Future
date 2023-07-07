/*
 * This script is created for the vsaccr modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
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
            }
            // 添加更多版本组的条件分支和对应的语言选项
            // else if (versionGroup == 4) {
            //     ret = "zh_tw";
            // }
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
        "es_es": true
        // 添加更多支持的语言选项
    };

    if (!SUPPORTED_LANGUAGES.hasOwnProperty(ret)) {
        ret = "en_us";
    }

    return ret;
}




function translate(key as string) as string {
    var lang = getLanguage();
    if (serverTranslations has lang) {
        if (serverTranslations[lang] has key) {
            return serverTranslations[lang][key];
        } else {
            return game.localize(key);
        }
    } else {
        if (serverTranslations["en_us"] has key) {
            return serverTranslations["en_us"][key];
        } else {
            return game.localize(key);
        }
    }
}

function format(key as string, obj as string) as string {
    var lang = getLanguage();
    if (serverTranslations has lang) {
        if (serverTranslations[lang] has key) {
            return serverTranslations[lang][key].replace("%s", obj);
        } else {
            return I18n.format(key, obj);
        }
    } else {
        if (serverTranslations["en_us"] has key) {
            return serverTranslations["en_us"][key].replace("%s", obj);
        } else {
            return I18n.format(key, obj);
        }
    }
}

function formatArray(key as string, objects as string[]) as string {
    var lang = getLanguage();
    if (serverTranslations has lang) {
        if (serverTranslations[lang] has key) {
            var str as string = serverTranslations[lang][key];
            for obj in objects {
                str = str.replaceFirst("%s", obj);
            }
            return str;
        } else {
            return I18n.format(key, objects);
        }
    } else {
        if (serverTranslations["en_us"] has key) {
            var str as string = serverTranslations["en_us"][key];
            for obj in objects {
                str = str.replaceFirst("%s", obj);
            }
            return str;
        } else {
            return I18n.format(key, objects);
        }
    }
}
