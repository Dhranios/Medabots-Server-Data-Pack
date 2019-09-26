# Set the builder position
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stage_builder","new"],Duration:100}
execute store result entity @e[tag=new,limit=1] Pos[0] double 1 run data get entity @s Item.tag.medabots_server.stage_data[0].position[0]
execute store result entity @e[tag=new,limit=1] Pos[1] double 1 run data get entity @s Item.tag.medabots_server.stage_data[0].position[1]
execute store result entity @e[tag=new,limit=1] Pos[2] double 1 run data get entity @s Item.tag.medabots_server.stage_data[0].position[2]
execute as @e[tag=new] at @s run teleport @s ~0.5 ~ ~0.5

# Set the builder data
data modify entity @e[tag=new,limit=1] Tags append from entity @s Item.tag.medabots_server.stage_data[0].object[]
execute store result score @e[tag=new,tag=floor_switch,limit=1] HomeX run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[0]
execute store result score @e[tag=new,tag=floor_switch,limit=1] HomeY run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[1]
execute store result score @e[tag=new,tag=floor_switch,limit=1] HomeZ run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[2]
execute store result score @e[tag=new,tag=fan,limit=1] Moving run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[0]
execute store result score @e[tag=new,tag=fan,limit=1] Range run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[1]
execute store result score @e[tag=new,tag=press_wall,limit=1] Range run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[0]
execute store result score @e[tag=new,limit=1] DelayTime run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[5]
execute store result score @e[tag=new,limit=1] PowerNeeded run data get entity @s Item.tag.medabots_server.stage_data[0].additional_data[6]
execute at @e[tag=new,tag=starting_area] run teleport @a[tag=building_player,limit=1] ~ ~ ~ 0 0

# Next, if any left
tag @e[tag=new] remove no_ticking
tag @e[tag=new] add no_ticker
tag @e[tag=new] remove new
data remove entity @s Item.tag.medabots_server.stage_data[0]
execute if entity @s[nbt={Item:{tag:{medabots_server:{stage_data:[{}]}}}}] run function medabots_server:stage/build/load_object