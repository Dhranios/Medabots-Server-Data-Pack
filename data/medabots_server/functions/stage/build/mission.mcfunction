tag @s remove allowed
execute if entity @e[distance=..0.7,tag=door] unless entity @e[distance=..0.7,tag=mission] run tag @s add allowed
tag @s[tag=!allowed] add failed

execute store result score #temp Stage run scoreboard players get @s Stage
execute at @e[tag=rubberobo] if score @e[tag=rubberobo,limit=1,distance=..0.1] Stage = #temp Stage run tag @s add impossible
execute at @e[tag=jammy] if score @e[tag=jammy,limit=1,distance=..0.1] Stage = #temp Stage run tag @s add impossible
tag @s[tag=impossible] remove allowed
tellraw @s[tag=impossible] {"translate":"medabots_server:message.stage.stage_builder.mission.required_goal"}
scoreboard players reset #temp Stage
tag @s[tag=impossible] remove impossible

execute if entity @s[tag=!failed] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:custom_stage"}}}]}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.mission.none_selected","color":"red"}
execute if entity @s[tag=!failed] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:custom_stage"}}}]}] run tag @s add failed

execute if entity @s[tag=!failed] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:custom_stage",stage_data:[{object:["mission"]}]}}}]}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.mission.contains_mission","color":"red"}
execute if entity @s[tag=!failed] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:custom_stage",stage_data:[{object:["mission"]}]}}}]}] run tag @s add failed

execute if entity @s[tag=!failed] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:custom_stage",stage_data:[{object:["rubberobo"]}]}}}]}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.mission.contains_rubberobo","color":"red"}
execute if entity @s[tag=!failed] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:custom_stage",stage_data:[{object:["rubberobo"]}]}}}]}] run tag @s add failed

execute if entity @s[tag=!failed] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:custom_stage",stage_data:[{object:["jammy"]}]}}}]}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.mission.contains_jammy","color":"red"}
execute if entity @s[tag=!failed] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:custom_stage",stage_data:[{object:["jammy"]}]}}}]}] run tag @s add failed

execute if entity @s[tag=!failed] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:custom_stage",stage_data:[{object:["door"]}]}}}]}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.mission.no_door","color":"red"}
execute if entity @s[tag=!failed] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:custom_stage",stage_data:[{object:["door"]}]}}}]}] run tag @s add failed

execute if entity @s[tag=!failed] store result score #temp Stage run data get entity @s Inventory[{Slot:-106b}].tag.medabots_server.stage
execute if entity @s[tag=!failed] unless score #temp Stage = @s Stage run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.mission.wrong_stage","color":"red"}
execute if entity @s[tag=!failed] unless score #temp Stage = @s Stage run tag @s add failed
scoreboard players reset #temp Stage

execute if entity @s[tag=!failed] if entity @e[distance=..0.7,tag=door,tag=east] run tag @s add east
execute if entity @s[tag=!failed] if entity @e[distance=..0.7,tag=door,tag=north] run tag @s add north
execute if entity @s[tag=!failed] if entity @e[distance=..0.7,tag=door,tag=south] run tag @s add south
execute if entity @s[tag=!failed] if entity @e[distance=..0.7,tag=door,tag=west] run tag @s add west
execute if entity @s[tag=!failed] store result score #temp HomeX run data get entity @e[distance=..0.7,tag=door,limit=1] Pos[0]
execute if entity @s[tag=!failed] store result score #temp HomeY run data get entity @e[distance=..0.7,tag=door,limit=1] Pos[1]
execute if entity @s[tag=!failed] store result score #temp HomeZ run data get entity @e[distance=..0.7,tag=door,limit=1] Pos[2]
execute if entity @s[tag=!failed] run summon minecraft:item ~ 255 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["build_mission"],NoGravity:1b}
execute if entity @s[tag=!failed] run data modify entity @e[tag=build_mission,limit=1,nbt=!{Item:{id:"minecraft:diamond_pickaxe",Count:1b}}] Item set from entity @s Inventory[{Slot:-106b,tag:{medabots_server:{id:"medabots_server:custom_stage"}}}]
execute if entity @s[tag=!failed] as @e[tag=build_mission,limit=1] run function medabots_server:stage/build/get_mission_door
execute if entity @s[tag=!failed] run kill @e[tag=build_mission,limit=1]
execute if entity @s[tag=!failed] run scoreboard players reset #temp HomeX
execute if entity @s[tag=!failed] run scoreboard players reset #temp HomeY
execute if entity @s[tag=!failed] run scoreboard players reset #temp HomeZ
execute if entity @s[tag=!failed] run scoreboard players reset #temp2 HomeX
execute if entity @s[tag=!failed] run scoreboard players reset #temp2 HomeY
execute if entity @s[tag=!failed] run scoreboard players reset #temp2 HomeZ
execute if entity @s[tag=!failed,tag=!found_door] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.mission.not_a_door","color":"red"}
execute if entity @s[tag=!failed,tag=!found_door] run tag @s add failed
tag @s remove found_door

execute if entity @s[tag=!failed,scores={StageBuild=47}] run function medabots_server:stage/build/clear_goal
execute if entity @s[tag=!failed,scores={StageBuild=47}] run summon minecraft:armor_stand ~ ~ ~ {"Tags":["no_ticking","mission","robattle"],Invisible:1b,Marker:1b,CustomName:'{"translate":"medabots_server:entity.mission"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b}]}
execute if entity @s[tag=!failed,scores={StageBuild=48}] run summon minecraft:armor_stand ~ ~ ~ {"Tags":["no_ticking","mission","defeat_the_enemy"],Invisible:1b,Marker:1b,CustomName:'{"translate":"medabots_server:entity.mission"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b}]}
execute if entity @s[tag=!failed,scores={StageBuild=49}] run summon minecraft:armor_stand ~ ~ ~ {"Tags":["no_ticking","mission","defeat_all_guards"],Invisible:1b,Marker:1b,CustomName:'{"translate":"medabots_server:entity.mission"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b}]}
execute if entity @s[tag=!failed,scores={StageBuild=50}] run summon minecraft:armor_stand ~ ~ ~ {"Tags":["no_ticking","mission","destroy_all_cannons"],Invisible:1b,Marker:1b,CustomName:'{"translate":"medabots_server:entity.mission"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b}]}
execute if entity @s[tag=!failed,scores={StageBuild=51}] run summon minecraft:armor_stand ~ ~ ~ {"Tags":["no_ticking","mission","run_until_the_time_is_up"],Invisible:1b,Marker:1b,CustomName:'{"translate":"medabots_server:entity.mission"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b}]}
execute if entity @s[tag=!failed,scores={StageBuild=52}] run summon minecraft:armor_stand ~ ~ ~ {"Tags":["no_ticking","mission","open_the_exit_door"],Invisible:1b,Marker:1b,CustomName:'{"translate":"medabots_server:entity.mission"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b}]}
execute if entity @s[tag=!failed] run data modify entity @e[distance=..0.7,tag=mission,limit=1] ArmorItems[3] set from entity @s Inventory[{Slot:-106b}]
execute if entity @s[tag=!failed] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.mission.medabot","color":"yellow"}
execute if entity @s[tag=!failed,y_rotation=0..-180,tag=!north,tag=!south] run tag @e[distance=..0.7,tag=mission] add east
execute if entity @s[tag=!failed,y_rotation=-90..90,tag=!east,tag=!west] run tag @e[distance=..0.7,tag=mission] add north
execute if entity @s[tag=!failed,y_rotation=90..-90,tag=!east,tag=!west] run tag @e[distance=..0.7,tag=mission] add south
execute if entity @s[tag=!failed,y_rotation=-180..0,tag=!north,tag=!south] run tag @e[distance=..0.7,tag=mission] add west

tag @s remove east
tag @s remove north
tag @s remove south
tag @s remove west
tag @s remove failed