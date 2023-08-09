/*
 * All Rights Reserved: Canoe Studio (2020-2023)
 * Unless expressly stated in writing by Canoe Studio, all content contained in this document, including but not limited to text, graphics, images, audio, and video files, is protected by copyright law and other intellectual property laws. Without permission, no part of this document may be reproduced, modified, distributed, published, displayed, or used in any other way.
 * Canoe Studio retains full ownership of its brand, trademarks, and logos, among other intellectual property rights. Without the explicit written permission of Canoe Studio, no one may use or display the brand, trademarks, or logos of Canoe Studio.
 * Canoe Studio reserves the right to modify, update, and supplement this document to ensure its accuracy and completeness. Canoe Studio shall not be liable for any errors or omissions in this document.
 */ 

#priority 32020


import mods.ctutils.utils.Math;

// For calculating power of int values 
function pow(base as int, exp as int) {
    if (exp < 0) {
        // 处理负指数的情况
        return 1 / pow(base, -exp);
    }

    var result = 1;

    for i in 0 to exp {
        result *= base;
    }

    return result;
}