execute if entity @s[scores={Jukebox=1..}] run scoreboard players set @s MusicType 1
execute if entity @s[scores={Jukebox=1..}] run scoreboard players set @s[scores={Stage=23..39}] MusicType 22
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s MusicType 58
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s OldMusicType 1
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s[scores={Stage=23..39}] OldMusicType 22
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
teleport @s ~ ~ ~ -180 0
tag @s remove crazy_hand_spawned
tag @s remove story_battle
tag @s remove clear_stage
tag @s remove main
tag @s[scores={StageVersion=1..}] add no_custom
function medabots_server:gamemodes/default/reset
execute store result score #temp Stage run data get entity @s Inventory[{Slot:-106b}].tag.medabots_server.stage
execute if score #temp Stage = @s Stage run tag @s[tag=!no_custom] add cleared_custom_stage
scoreboard players reset #temp Stage
scoreboard players reset @s Stage
data modify entity @s[tag=cleared_custom_stage] Inventory[{Slot:-106b}].tag.medabots_server.cleared set value 1b
data modify entity @s[tag=cleared_custom_stage] Inventory[{Slot:-106b}].tag.display.Lore[3] set value '{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage.cleared","with":[{"color":"green","translate":"medabots_server:item.custom_stage.cleared.yes"}]}'
tag @s remove no_custom
tag @s remove cleared_custom_stage