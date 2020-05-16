scoreboard players remove @s JukeboxWave 1
tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.jukebox","color":"green"},{"translate":"medabots_server:message.jukebox.previous_wave"}]}
function medabots_server:items/jukebox/track
