/*
 * All Rights Reserved: Canoe Studio (2020-2023)
 * Unless expressly stated in writing by Canoe Studio, all content contained in this document, including but not limited to text, graphics, images, audio, and video files, is protected by copyright law and other intellectual property laws. Without permission, no part of this document may be reproduced, modified, distributed, published, displayed, or used in any other way.
 * Canoe Studio retains full ownership of its brand, trademarks, and logos, among other intellectual property rights. Without the explicit written permission of Canoe Studio, no one may use or display the brand, trademarks, or logos of Canoe Studio.
 * Canoe Studio reserves the right to modify, update, and supplement this document to ensure its accuracy and completeness. Canoe Studio shall not be liable for any errors or omissions in this document.
 */ 

#priority 32767


global HARDMODE_MIN_ROLLS as int = 2;
global HARDMODE_MAX_ROLLS as int = 3;

// If you want to set up a server, or you just want to use a different server-side language used in scripts, change this to your server's desired language
// If you don't set this, default language will be set depending on your version group
// Version group 0 = "zh_cn", version group 1 = "en_us"
// If this is set, the version group will be ignored and default lauguage will be this instead
// THIS IS THE LANGUAGE USED BY WELCOME QUOTES / GAME STAGES DESCRIPTIONS ETC. NOT THE GAME'S LANGUAGE.
// IF YOU DON'T USE A SUPPORTED LANGUAGE (LISTED BELOW), DO NOT SET THIS.
// Note that only a few languages are supported, if you don't set this to a supported language it will be forced to en_us

global DEFAULT_LANGUAGE as string = "";

// Only these languages are supported!

global SUPPORTED_LANGUAGES as string[] = [
    "en_us",
    "zh_cn",
    "zh_tw"
];
