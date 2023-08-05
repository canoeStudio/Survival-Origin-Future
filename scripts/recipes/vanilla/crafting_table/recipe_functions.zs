/*
 * All Rights Reserved: Canoe Studio (2020-2023)
 * Unless expressly stated in writing by Canoe Studio, all content contained in this document, including but not limited to text, graphics, images, audio, and video files, is protected by copyright law and other intellectual property laws. Without permission, no part of this document may be reproduced, modified, distributed, published, displayed, or used in any other way.
 * Canoe Studio retains full ownership of its brand, trademarks, and logos, among other intellectual property rights. Without the explicit written permission of Canoe Studio, no one may use or display the brand, trademarks, or logos of Canoe Studio.
 * Canoe Studio reserves the right to modify, update, and supplement this document to ensure its accuracy and completeness. Canoe Studio shall not be liable for any errors or omissions in this document.
 */ 










import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;


recipes.addShaped("dank_null_1", <danknull:dank_null_1>, [
    [null, <danknull:dank_null_panel_1>, null],
    [<danknull:dank_null_panel_1>, <danknull:dank_null_0>.marked("dank"), <danknull:dank_null_panel_1>],
    [null, <danknull:dank_null_panel_1>, null]],
function(out, ins, cInfo) {
    return out.withTag(ins.dank.tag);
}, null);
recipes.addShaped("dank_null_2", <danknull:dank_null_2>, [
    [null, <danknull:dank_null_panel_2>, null],
    [<danknull:dank_null_panel_2>, <danknull:dank_null_1>.marked("dank"), <danknull:dank_null_panel_2>],
    [null, <danknull:dank_null_panel_2>, null]],
function(out, ins, cInfo) {
    return out.withTag(ins.dank.tag);
}, null);
recipes.addShaped("dank_null_3", <danknull:dank_null_3>, [
    [null, <danknull:dank_null_panel_3>, null],
    [<danknull:dank_null_panel_3>, <danknull:dank_null_2>.marked("dank"), <danknull:dank_null_panel_3>],
    [null, <danknull:dank_null_panel_3>, null]],
function(out, ins, cInfo) {
    return out.withTag(ins.dank.tag);
}, null);
recipes.addShaped("dank_null_4", <danknull:dank_null_4>, [
    [null, <danknull:dank_null_panel_4>, null],
    [<danknull:dank_null_panel_4>, <danknull:dank_null_3>.marked("dank"), <danknull:dank_null_panel_4>],
    [null, <danknull:dank_null_panel_4>, null]],
function(out, ins, cInfo) {
    return out.withTag(ins.dank.tag);
}, null);
recipes.addShaped("dank_null_5", <danknull:dank_null_5>, [
    [null, <danknull:dank_null_panel_5>, null],
    [<danknull:dank_null_panel_5>, <danknull:dank_null_4>.marked("dank"), <danknull:dank_null_panel_5>],
    [null, <danknull:dank_null_panel_5>, null]],
function(out, ins, cInfo) {
    return out.withTag(ins.dank.tag);
}, null);
