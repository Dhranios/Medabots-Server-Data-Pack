scoreboard players set @s JukeboxChannel 0
tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.jukebox","color":"green"},{"translate":"medabots_server:message.jukebox.set_channel","with":[{"translate":"medabots_server:item.jukebox.channel.generic"}]}]}
function medabots_server:items/jukebox/channel
