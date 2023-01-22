#loader crafttweaker reloadableevents
#loader reload reloadable
import crafttweaker.event.EntityTravelToDimensionEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.text.ITextComponent;

events.onEntityTravelToDimension(
    function(event as EntityTravelToDimensionEvent) {
        if(event.entity instanceof IPlayer)
        {
            var player as IPlayer = event.entity;
            if (
                (!player.world.remote) &&
                (event.dimension == -1)
            )
            {
                player.sendRichTextMessage(ITextComponent.fromTranslation("vsaccr.dismension.nether.remind"));
            }   
        }
    }
);
