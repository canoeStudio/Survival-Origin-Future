/*
 * All Rights Reserved: Canoe Studio (2020-2023)
 * Unless expressly stated in writing by Canoe Studio, all content contained in this document, including but not limited to text, graphics, images, audio, and video files, is protected by copyright law and other intellectual property laws. Without permission, no part of this document may be reproduced, modified, distributed, published, displayed, or used in any other way.
 * Canoe Studio retains full ownership of its brand, trademarks, and logos, among other intellectual property rights. Without the explicit written permission of Canoe Studio, no one may use or display the brand, trademarks, or logos of Canoe Studio.
 * Canoe Studio reserves the right to modify, update, and supplement this document to ensure its accuracy and completeness. Canoe Studio shall not be liable for any errors or omissions in this document.
 */ 

#priority 32400


import mods.versioner.Versioner;

function getVersionName() as string {
    return Versioner.getCurrentVersion().getVersionName();
}

function getVersionCode() as int {
    return Versioner.getCurrentVersion().getVersionCode();
}

function getVersionGroup() as int {
    if(Versioner.getCurrentVersion().hasVariable("versionGroup")) {
        return (Versioner.getCurrentVersion().getVariable("versionGroup").asLong()) as int;
    } else {
        return -1 as int;
    }
}

function isServerPack() as bool {
    return !(loadedMods.contains("resourceloader")) as bool;
}
