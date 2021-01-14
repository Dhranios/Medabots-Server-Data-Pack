# Close
scoreboard players reset @s EditingTinpet
scoreboard players set @s UsePart 0

tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:item.tinpet","color":"green"},{"translate":"medabots_server:message.tinpet.stop_editing"}]}

scoreboard players operation @s MusicType = @s OldMusicType
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players reset @s OldMusicType

scoreboard players operation #temp MedabotNr = @s MedabotNr
execute as @e[tag=medabot_model] if score @s MedabotNr = #temp MedabotNr run kill @s
scoreboard players reset @s MedabotNr
scoreboard players reset #temp MedabotNr
tag @s remove no_model