scoreboard players add @s Jukebox 1
tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.jukebox","color":"green"},{"translate":"medabots_server:message.jukebox.next_track"}]}
function medabots_server:items/jukebox/track
