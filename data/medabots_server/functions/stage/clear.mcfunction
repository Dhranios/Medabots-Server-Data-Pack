execute if entity @s[scores={Jukebox=1..}] run scoreboard players set @s MusicType 1
execute if entity @s[scores={Jukebox=1..}] run scoreboard players set @s[scores={Stage=23..29}] MusicType 22
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s MusicType 58
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s OldMusicType 1
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s[scores={Stage=23..29}] OldMusicType 22
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
teleport @s[scores={Stage=1..}] ~ ~ ~ -180 0
tag @s remove crazy_hand_spawned
tag @s remove story_battle
tag @s remove clear_stage
tag @s remove main
tag @s[scores={StageVersion=1..}] add not_custom
tag @s[scores={Stage=0}] add not_custom
function medabots_server:gamemodes/default/reset
execute store result score #temp Stage run data get entity @s Inventory[{Slot:-106b}].tag.medabots_server.stage
execute if score #temp Stage = @s Stage run tag @s[tag=!not_custom,nbt=!{Inventory:[{Slot:-106b,tag:{display:{Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage.cleared","with":[{"color":"green","translate":"medabots_server:item.custom_stage.cleared.yes"}]}']}}}]}] add cleared_custom_stage
scoreboard players reset #temp Stage
scoreboard players reset @s Stage
execute if entity @s[tag=cleared_custom_stage] in minecraft:overworld run setblock -286 0 -52 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:diamond_pickaxe",Count:1b,tag:{}}]}
execute if entity @s[tag=cleared_custom_stage] in minecraft:overworld run data modify block -286 0 -52 Items[0].tag merge from entity @s Inventory[{Slot:-106b}].tag
execute if entity @s[tag=cleared_custom_stage] in minecraft:overworld positioned -286 0 -52 run data modify block ~ ~ ~ Items[0].tag.medabots_server.cleared append from entity @s UUID
execute if entity @s[tag=cleared_custom_stage] in minecraft:overworld run data modify block -286 0 -52 Items[0].tag.display.Lore[3] set value '{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage.cleared","with":[{"color":"green","translate":"medabots_server:item.custom_stage.cleared.yes"}]}'
execute if entity @s[tag=cleared_custom_stage] in minecraft:overworld run loot replace entity @s weapon.offhand 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if entity @s[tag=cleared_custom_stage] in minecraft:overworld run setblock -286 0 -52 minecraft:bedrock
tag @s remove not_custom
tag @s remove cleared_custom_stage