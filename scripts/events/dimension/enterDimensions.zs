import crafttweaker.event.PlayerChangedDimensionEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.text.ITextComponent;
import mods.zenutils.HexHelper;
import mods.zenutils.I18n;
import crafttweaker.player.IPlayer;

events.onPlayerChangedDimension(function(event as PlayerChangedDimensionEvent){
    var dimName = event.worldInfo.worldName;
    event.player.sendRichTextStatusMessage(ITextComponent.fromTranslation("vsaccr.ia.custom.welcome.name" + "." + dimName), false);
});
