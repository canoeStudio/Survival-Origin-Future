/*
 * All Rights Reserved: Canoe Studio (2020-2023)
 * Unless expressly stated in writing by Canoe Studio, all content contained in this document, including but not limited to text, graphics, images, audio, and video files, is protected by copyright law and other intellectual property laws. Without permission, no part of this document may be reproduced, modified, distributed, published, displayed, or used in any other way.
 * Canoe Studio retains full ownership of its brand, trademarks, and logos, among other intellectual property rights. Without the explicit written permission of Canoe Studio, no one may use or display the brand, trademarks, or logos of Canoe Studio.
 * Canoe Studio reserves the right to modify, update, and supplement this document to ensure its accuracy and completeness. Canoe Studio shall not be liable for any errors or omissions in this document.
 */ 

#priority 32200


import crafttweaker.player.IPlayer;
import mods.versioner.Versioner;
import mods.versioner.Sponsors;

function isPatreon(player as IPlayer) as bool {
    return Versioner.getSponsors().isSponsor(player);
}

function getSponsorLevel(player as IPlayer) as int {
    val sponsors = Versioner.getSponsors();
    if(!isPatreon(player)) {
        return NOT_SPONSOR;
    }
    val category as string = sponsors.getPlayerCategory(player);
    if(isNull(category)) {
        return NOT_SPONSOR;
    } 
    if(category.toLowerCase() == "redstone") {
        return REDSTONE_SPONSOR;
    }
    if(category.toLowerCase() == "gold") {
        return GOLD_SPONSOR;
    }
    if(category.toLowerCase() == "diamond") {
        return DIAMOND_SPONSOR;
    }
    if(category.toLowerCase() == "emerald") {
        return EMERALD_SPONSOR;
    }
    if(category.toLowerCase() == "creator") {
        return CREATOR;
    }
    return NOT_SPONSOR;
} 

function getPlayerColor(player as IPlayer) as string {
    var level as int = getSponsorLevel(player);
    val mapping as string[int] = {
        0: "yellow", 
        1: "red", 
        2: "gold", 
        3: "aqua", 
        4: "green",
        666: "light_purple"
    };
    var ret = mapping[level];
    if(isNull(ret)) {
        ret = mapping[NOT_SPONSOR];
    }
    return ret;
}

function getPlayerColorCode(player as IPlayer) as string {
    var level as int = getSponsorLevel(player);
    val mapping as string[int] = {
        0: "§e", 
        1: "§c", 
        2: "§6", 
        3: "§b", 
        4: "§a",
        666: "§d"
    };
    var ret = mapping[level];
    if(isNull(ret)) {
        ret = mapping[NOT_SPONSOR];
    }
    return ret;
}

function getPlayerPrefixKey(player as IPlayer) as string {
    var level as int = getSponsorLevel(player);
    val mapping as string[int] = {
        0: "", 
        1: "vsaccr.event.sponsor.prefix.redstone", 
        2: "vsaccr.event.sponsor.prefix.gold", 
        3: "vsaccr.event.sponsor.prefix.diamond", 
        4: "vsaccr.event.sponsor.prefix.emerald",
        666: "vsaccr.event.sponsor.prefix.creator"
    };
    var ret = mapping[level];
    if(isNull(ret)) {
        ret = mapping[NOT_SPONSOR];
    }
    return ret;
}
