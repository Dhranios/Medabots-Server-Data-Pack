# Set the builder position
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stage_builder","new"],Duration:100}
data modify entity @e[tag=new,limit=1] Tags append from entity @s Item.tag.medabots_server.stage_data[0].object[]
execute store result entity @e[tag=new,limit=1] Pos[0] double 1 run data get entity @s Item.tag.medabots_server.stage_data[0].position[0]
execute store result entity @e[tag=new,limit=1] Pos[1] double 1 run data get entity @s Item.tag.medabots_server.stage_data[0].position[1]
execute store result entity @e[tag=new,limit=1] Pos[2] double 1 run data get entity @s Item.tag.medabots_server.stage_data[0].position[2]
execute as @e[tag=new] at @s run teleport @s ~0.5 ~ ~0.5

# Set the builder data
execute store result score @e[tag=new,limit=1] HomeX run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[0]
execute store result score @e[tag=new,limit=1] HomeY run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[1]
execute store result score @e[tag=new,limit=1] HomeZ run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[2]
execute store result score @e[tag=new,limit=1] Moving run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[3]
execute store result score @e[tag=new,limit=1] Range run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[4]
execute store result score @e[tag=new,limit=1] DelayTime run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[5]
execute store result score @e[tag=new,limit=1] PowerNeeded run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[6]
execute store result score @e[tag=new,limit=1] Speed run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[7]

execute at @e[tag=new,tag=starting_area] if block ~ ~-1 ~ minecraft:air run function medabots_server:set_blocks/bridge
execute at @e[tag=new,tag=starting_area] if block ~ ~-1 ~ minecraft:water if block ~ ~-2 ~ minecraft:water run function medabots_server:set_blocks/bridge
execute at @e[tag=new,tag=starting_area] if block ~ ~-1 ~ minecraft:water run teleport @a[tag=building_player,limit=1] ~ ~-1 ~ 0 0
execute at @e[tag=new,tag=starting_area] unless block ~ ~-1 ~ minecraft:water run teleport @a[tag=building_player,limit=1] ~ ~ ~ 0 0
kill @e[tag=new,tag=starting_area]

execute at @e[tag=new,tag=goal_area,limit=1] if block ~ ~-1 ~ minecraft:air run function medabots_server:set_blocks/bridge
execute at @e[tag=new,tag=goal_area,limit=1] if block ~ ~-1 ~ minecraft:water if block ~ ~-2 ~ minecraft:water run function medabots_server:set_blocks/bridge
execute as @e[distance=..0.7,tag=mission] at @e[tag=new,tag=goal_area,limit=1] if block ~ ~-1 ~ minecraft:water positioned ~ ~-1 ~ run function medabots_server:entities/mission/enemy_medabot
execute as @e[distance=..0.7,tag=mission] at @e[tag=new,tag=goal_area,limit=1] unless block ~ ~-1 ~ minecraft:water run function medabots_server:entities/mission/enemy_medabot

execute as @e[distance=..0.7,tag=mission] unless entity @s[tag=!run_until_the_time_is_up,tag=!defeat_all_guards] run tag @e[tag=new,limit=1,tag=guard,tag=!pot,tag=!action_floor] add mission_entity
execute as @e[distance=..0.7,tag=mission] unless entity @s[tag=!run_until_the_time_is_up,tag=!destroy_all_cannons] run tag @e[tag=new,limit=1,tag=cannon,tag=!pot,tag=!action_floor] add mission_entity

execute as @e[tag=door,tag=new,limit=1] at @s if entity @e[distance=..0.7,tag=door,tag=!stage_builder,type=minecraft:armor_stand] run tag @e[distance=..0.7,tag=door,type=minecraft:armor_stand] add mission_door

# Next, if any left
tag @e[tag=new] remove no_ticking
tag @e[tag=new] remove new
data remove entity @s Item.tag.medabots_server.stage_data[0]
execute if entity @s[nbt={Item:{tag:{medabots_server:{stage_data:[{}]}}}}] run function medabots_server:entities/mission/build