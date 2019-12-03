scoreboard players reset @s Jukebox
scoreboard players reset @s JukeboxChannel
scoreboard players set @s Music 0
scoreboard players set @s PrevMusicType 0
tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.jukebox","color":"green"},{"translate":"medabots_server:message.jukebox.turned_off"}]}