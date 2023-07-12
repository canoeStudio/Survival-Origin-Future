/*
 * This script is created for the vsaccr modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
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