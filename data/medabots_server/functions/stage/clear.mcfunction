scoreboard players operation #temp Stage = @s Stage
execute if entity @s[scores={Jukebox=1..}] run scoreboard players set @s MusicType 1
execute if entity @s[scores={Jukebox=1..}] if score #temp Stage matches 23..29 run scoreboard players set @s MusicType 22
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s MusicType 58
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s OldMusicType 1
execute unless entity @s[scores={Jukebox=1..}] if score #temp Stage matches 23..29 run scoreboard players set @s OldMusicType 22
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
teleport @s ~ ~ ~ -180 0
tag @s remove crazy_hand_spawned
tag @s remove story_battle
tag @s remove clear_stage
tag @s remove main
function medabots_server:gamemodes/default/reset
execute store result score #temp2 Stage run data get entity @s[scores={Stage=1..}] Inventory[{Slot:-106b}].tag.medabots_server.stage
execute if score #temp Stage = #temp2 Stage unless entity @s[scores={StageVersion=1..}] run tag @s add cleared_custom_stage
scoreboard players reset #temp Stage
scoreboard players reset #temp2 Stage
scoreboard players reset @s Stage
scoreboard players reset @s StageVersion
data modify entity @s[tag=cleared_custom_stage] Inventory[{Slot:-106b}].tag.medabots_server.cleared set value 1b
data modify entity @s[tag=cleared_custom_stage] Inventory[{Slot:-106b}].tag.display.Lore[3] set value '{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage.cleared","with":[{"color":"green","translate":"medabots_server:item.custom_stage.cleared.yes"}]}'
tag @s remove cleared_custom_stage