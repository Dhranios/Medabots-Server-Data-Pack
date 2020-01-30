execute if entity @s[scores={Jukebox=1..}] run scoreboard players set @s MusicType 1
execute if entity @s[scores={Jukebox=1..}] run scoreboard players set @s[scores={Stage=23..29}] MusicType 22
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s MusicType 58
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s OldMusicType 1
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s[scores={Stage=23..29}] OldMusicType 22
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
execute if entity @s[tag=cleared_custom_stage] run setblock -286 0 -52 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
execute if entity @s[tag=cleared_custom_stage] run data modify block -286 0 -52 Items[0] merge from entity @s Inventory[{Slot:-106b}]
execute if entity @s[tag=cleared_custom_stage] run data modify block -286 0 -52 Items[0].tag.medabots_server.cleared set value 1b
execute if entity @s[tag=cleared_custom_stage] run data modify block -286 0 -52 Items[0].tag.display.Lore[3] set value '{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage.cleared","with":[{"color":"green","translate":"medabots_server:item.custom_stage.cleared.yes"}]}'
execute if entity @s[tag=cleared_custom_stage] run loot replace entity @s weapon.offhand 1 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute if entity @s[tag=cleared_custom_stage] run setblock -286 0 -52 minecraft:bedrock
tag @s remove no_custom
tag @s remove cleared_custom_stage