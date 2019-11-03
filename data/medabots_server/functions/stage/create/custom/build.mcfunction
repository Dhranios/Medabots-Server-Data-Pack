# Set the builder position
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stage_builder","new"],Duration:100}
data modify entity @e[tag=new,limit=1] Tags append from entity @s Item.tag.medabots_server.stage_data[0].object[]
execute if entity @e[tag=new,limit=1,tag=mission] run summon minecraft:armor_stand ~ ~ ~ {"Tags":["mission","new"],Invisible:1b,Marker:1b,CustomName:'{"translate":"medabots_server:entity.mission"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b}]}
execute if entity @e[tag=new,limit=1,tag=enemy_medabot] run summon minecraft:armor_stand ~ ~ ~ {"Tags":["enemy_medabot","new"],Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.enemy_medabot"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b}]}
execute as @e[tag=new,limit=1,type=minecraft:area_effect_cloud] unless entity @s[tag=!mission,tag=!enemy_medabot] run kill @s
data modify entity @e[tag=new,limit=1,tag=mission] Tags append from entity @s Item.tag.medabots_server.stage_data[0].object[]
data modify entity @e[tag=new,limit=1,tag=enemy_medabot] Tags append from entity @s Item.tag.medabots_server.stage_data[0].object[]
execute store result entity @e[tag=new,limit=1] Pos[0] double 1 run data get entity @s Item.tag.medabots_server.stage_data[0].position[0]
execute store result entity @e[tag=new,limit=1] Pos[1] double 1 run data get entity @s Item.tag.medabots_server.stage_data[0].position[1]
execute store result entity @e[tag=new,limit=1] Pos[2] double 1 run data get entity @s Item.tag.medabots_server.stage_data[0].position[2]
execute as @e[tag=new] at @s run teleport @s ~0.5 ~ ~0.5

# Set the builder data
execute if entity @e[tag=new,limit=1,tag=mission] run data modify entity @e[tag=new,limit=1,tag=mission] ArmorItems[3] set from entity @s Item.tag.medabots_server.stage_data[0].nbt
execute if entity @e[tag=new,limit=1,tag=enemy_medabot] run data modify entity @e[tag=new,limit=1,tag=enemy_medabot] ArmorItems[3] set from entity @s Item.tag.medabots_server.stage_data[0].nbt

execute store result score @e[tag=new,limit=1] HomeX run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[0]
execute store result score @e[tag=new,limit=1] HomeY run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[1]
execute store result score @e[tag=new,limit=1] HomeZ run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[2]
execute store result score @e[tag=new,limit=1] Moving run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[3]
execute store result score @e[tag=new,limit=1] Range run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[4]
execute store result score @e[tag=new,limit=1] DelayTime run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[5]
execute store result score @e[tag=new,limit=1] PowerNeeded run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[6]
execute store result score @e[tag=new,limit=1] Speed run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[7]
execute at @e[tag=new,tag=starting_area] run teleport @a[tag=building_player,limit=1] ~ ~ ~ 0 0

execute as @e[tag=new,limit=1,tag=mission] at @s run teleport @s ~ ~-3 ~
execute as @e[tag=new,limit=1,tag=enemy_medabot] at @s run teleport @s ~ ~-3 ~


# Next, if any left
tag @e[tag=new] remove no_ticking
tag @e[tag=new] remove new
data remove entity @s Item.tag.medabots_server.stage_data[0]
execute if entity @s[nbt={Item:{tag:{medabots_server:{stage_data:[{}]}}}}] run function medabots_server:stage/create/custom/build