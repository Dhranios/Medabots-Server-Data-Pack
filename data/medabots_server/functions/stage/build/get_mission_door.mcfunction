# Set the builder position
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["new"],Duration:100}
data modify entity @e[tag=new,limit=1] Tags append from entity @s Item.tag.medabots_server.stage_data[0].object[]
execute if entity @e[tag=new,limit=1,tag=door] store result score #temp2 HomeX run data get entity @s Item.tag.medabots_server.stage_data[0].position[0]
execute if entity @e[tag=new,limit=1,tag=door] store result score #temp2 HomeY run data get entity @s Item.tag.medabots_server.stage_data[0].position[1]
execute if entity @e[tag=new,limit=1,tag=door] store result score #temp2 HomeZ run data get entity @s Item.tag.medabots_server.stage_data[0].position[2]
execute if entity @e[tag=new,limit=1,tag=door] if score #temp HomeX = #temp2 HomeX if score #temp HomeY = #temp2 HomeY if score #temp HomeZ = #temp2 HomeZ run tag @a[scores={StageBuild=47..52}] add found_door
execute if entity @e[tag=new,limit=1,tag=door,tag=east] as @a[scores={StageBuild=47..52},tag=found_door,tag=!east] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.mission.wrong_rotation","color":"red"}
execute if entity @e[tag=new,limit=1,tag=door,tag=east] as @a[scores={StageBuild=47..52},tag=found_door,tag=!east] run tag @s add failed
execute if entity @e[tag=new,limit=1,tag=door,tag=north] as @a[scores={StageBuild=47..52},tag=found_door,tag=!north] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.mission.wrong_rotation","color":"red"}
execute if entity @e[tag=new,limit=1,tag=door,tag=north] as @a[scores={StageBuild=47..52},tag=found_door,tag=!north] run tag @s add failed
execute if entity @e[tag=new,limit=1,tag=door,tag=south] as @a[scores={StageBuild=47..52},tag=found_door,tag=!south] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.mission.wrong_rotation","color":"red"}
execute if entity @e[tag=new,limit=1,tag=door,tag=south] as @a[scores={StageBuild=47..52},tag=found_door,tag=!south] run tag @s add failed
execute if entity @e[tag=new,limit=1,tag=door,tag=west] as @a[scores={StageBuild=47..52},tag=found_door,tag=!west] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.mission.wrong_rotation","color":"red"}
execute if entity @e[tag=new,limit=1,tag=door,tag=west] as @a[scores={StageBuild=47..52},tag=found_door,tag=!west] run tag @s add failed
kill @e[tag=new,limit=1]

# Next, if any left
data remove entity @s Item.tag.medabots_server.stage_data[0]
execute unless entity @a[scores={StageBuild=47..52},tag=found_door] if entity @s[nbt={Item:{tag:{medabots_server:{stage_data:[{}]}}}}] run function medabots_server:stage/build/get_mission_door