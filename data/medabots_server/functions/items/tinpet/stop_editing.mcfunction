# Close
scoreboard players reset @s EditingTinpet
scoreboard players set @s UsePart 0

tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.stop_editing"}]}

scoreboard players operation @s MusicType = @s OldMusicType
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players reset @s OldMusicType