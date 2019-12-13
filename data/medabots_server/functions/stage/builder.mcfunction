execute store result score #temp Time run clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}} 0
execute if score #temp Time matches 0 unless entity @s[nbt={Inventory:[{Slot:8b}]}] run replaceitem entity @s hotbar.8 minecraft:written_book{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.stage_builder"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.generic.drop_to_kill"}']},HideFlags:62,pages:['{"translate":"medabots_server:item.stage_builder.remove","clickEvent":{"action":"run_command","value":"/trigger StageBuild set -1"},"extra":[{"text":"\\n\\n"},{"translate":"medabots_server:item.stage_builder.bind_object","clickEvent":{"action":"run_command","value":"/trigger StageBuild set -4"}},{"text":"\\n"},{"translate":"medabots_server:item.stage_builder.unbind_object","clickEvent":{"action":"run_command","value":"/trigger StageBuild set -11"}},{"text":"\\n"},{"translate":"medabots_server:item.stage_builder.go_to_bound_object","clickEvent":{"action":"run_command","value":"/trigger StageBuild set -12"}},{"text":"\\n\\n"},{"translate":"medabots_server:item.stage_builder.power.increase","clickEvent":{"action":"run_command","value":"/trigger StageBuild set -5"}},{"translate":"medabots_server:item.stage_builder.power.decrease","clickEvent":{"action":"run_command","value":"/trigger StageBuild set -6"}},{"text":"\\n\\n"},{"translate":"medabots_server:item.stage_builder.delay.increase","clickEvent":{"action":"run_command","value":"/trigger StageBuild set -7"}},{"text":"\\n"},{"translate":"medabots_server:item.stage_builder.delay.decrease","clickEvent":{"action":"run_command","value":"/trigger StageBuild set -8"}},{"text":"\\n\\n"},{"translate":"medabots_server:item.stage_builder.range.increase","clickEvent":{"action":"run_command","value":"/trigger StageBuild set -9"}},{"text":"\\n"},{"translate":"medabots_server:item.stage_builder.range.decrease","clickEvent":{"action":"run_command","value":"/trigger StageBuild set -10"}}]}','{"translate":"medabots_server:block.starting_area","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 1"},"extra":[{"text":"\\n"},{"translate":"medabots_server:block.goal_area","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 2"}},{"text":"\\n\\n"},{"translate":"medabots_server:item.stage_builder.save_version","clickEvent":{"action":"run_command","value":"/trigger StageBuild set -2"}},{"text":"\\n"},{"translate":"medabots_server:item.stage_builder.load","clickEvent":{"action":"run_command","value":"/trigger StageBuild set -3"}},{"text":"\\n\\n"},{"translate":"medabots_server:item.stage_builder.exit","clickEvent":{"action":"run_command","value":"/trigger LeaveStage set 1"}}]}'],title:"Stage Builder",author:"you",medabots_server:{id:"medabots_server:stage_builder",kill:1b,final:0b}}
scoreboard players reset #temp Time

# Not accessible: balloon bomb, jammy, mission
data modify entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.pot","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 3"}}'
data modify entity @s[advancements={medabots_server:special_items/action_floor=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.action_floor","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 4"}}'
data modify entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.floor_switch.green","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 5"},"extra":[{"text":"\\n"},{"translate":"medabots_server:block.floor_switch.yellow","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 6"}},{"text":"\\n"},{"translate":"medabots_server:block.floor_switch.blue","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 7"}}]}'
data modify entity @s[advancements={medabots_server:special_items/stone=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.stone","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 8"}}'
data modify entity @s[advancements={medabots_server:special_items/accelerator=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.accelerator","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 9"}}'
data modify entity @s[advancements={medabots_server:special_items/gas_floor=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:item.stage_builder.alternate.effect","with":[{"translate":"medabots_server:block.gas_floor"},{"translate":"medabots_server:effect.confused"}],"clickEvent":{"action":"run_command","value":"/trigger StageBuild set 10"},"extra":[{"text":"\\n"},{"translate":"medabots_server:item.stage_builder.alternate.effect","with":[{"translate":"medabots_server:block.gas_floor"},{"translate":"medabots_server:effect.ineffective_part"}],"clickEvent":{"action":"run_command","value":"/trigger StageBuild set 11"}},{"text":"\\n"},{"translate":"medabots_server:item.stage_builder.alternate.effect","with":[{"translate":"medabots_server:block.gas_floor"},{"translate":"medabots_server:effect.no_defending"}],"clickEvent":{"action":"run_command","value":"/trigger StageBuild set 12"}},{"text":"\\n"},{"translate":"medabots_server:item.stage_builder.alternate.effect","with":[{"translate":"medabots_server:block.gas_floor"},{"translate":"medabots_server:move.falling"}],"clickEvent":{"action":"run_command","value":"/trigger StageBuild set 13"}}]}'
data modify entity @s[advancements={medabots_server:special_items/hole=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.hole","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 14"}}'
data modify entity @s[advancements={medabots_server:special_items/hammer_punch=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.hammer_punch","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 15"}}'
data modify entity @s[advancements={medabots_server:special_items/spring_wall=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.spring_wall","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 16"}}'
data modify entity @s[advancements={medabots_server:special_items/press_wall=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.press_wall","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 17"}}'
data modify entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.door","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 18"}}'
data modify entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.wall","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 19"}}'
data modify entity @s[advancements={medabots_server:special_items/glass=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.glass","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 20"}}'
data modify entity @s[advancements={medabots_server:special_items/mirror=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:item.stage_builder.alternate.rotation","with":[{"translate":"medabots_server:block.mirror"},{"text":"-45"}],"clickEvent":{"action":"run_command","value":"/trigger StageBuild set 21"},"extra":[{"text":"\\n"},{"translate":"medabots_server:item.stage_builder.alternate.rotation","with":[{"translate":"medabots_server:block.mirror"},{"text":"45"}],"clickEvent":{"action":"run_command","value":"/trigger StageBuild set 22"}}]}'
data modify entity @s[advancements={medabots_server:special_items/laser_trap=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.laser_trap","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 23"}}'
data modify entity @s[advancements={medabots_server:special_items/fan=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.fan","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 24"},"extra":[{"text":"\\n"},{"translate":"medabots_server:item.stage_builder.alternate.reverse","with":[{"translate":"medabots_server:block.fan"}],"clickEvent":{"action":"run_command","value":"/trigger StageBuild set 25"}}]}'
data modify entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.bridge","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 26"}}'
data modify entity @s[advancements={medabots_server:special_items/drawbridge=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.drawbridge","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 27"}}'
data modify entity @s[advancements={medabots_server:special_items/raft=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:entity.raft","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 28"}}'
data modify entity @s[advancements={medabots_server:special_items/whirlpool=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.whirlpool","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 29"}}'
data modify entity @s[advancements={medabots_server:special_items/algae=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.algae","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 30"}}'
data modify entity @s[advancements={medabots_server:special_items/alarm=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.alarm","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 31"}}'
data modify entity @s[advancements={medabots_server:special_items/guard=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:entity.guard.slow","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 32"},"extra":[{"text":"\\n"},{"translate":"medabots_server:entity.guard.medium","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 33"}},{"text":"\\n"},{"translate":"medabots_server:entity.guard.fast","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 34"}}]}'
data modify entity @s[advancements={medabots_server:special_items/cannon=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:entity.cannon.still","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 35"},"extra":[{"text":"\\n"},{"translate":"medabots_server:entity.cannon.swiffle","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 36"}},{"text":"\\n"},{"translate":"medabots_server:entity.cannon.tripwire","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 37"}},{"text":"\\n"},{"translate":"medabots_server:entity.cannon.search","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 38"}}]}'
data modify entity @s[advancements={medabots_server:special_items/balloon_bomb=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:entity.balloon_bomb","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 39"}}'
data modify entity @s[advancements={medabots_server:special_items/bomb=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:entity.bomb","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 40"}}'
data modify entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:entity.round_stone","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 41"},"extra":[{"text":"\\n"},{"translate":"medabots_server:item.stage_builder.alternate.moving","with":[{"translate":"medabots_server:entity.round_stone"}],"clickEvent":{"action":"run_command","value":"/trigger StageBuild set 42"}}]}'
data modify entity @s[advancements={medabots_server:special_items/ice_block=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:entity.ice_block","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 43"},"extra":[{"text":"\\n"},{"translate":"medabots_server:item.stage_builder.alternate.moving","with":[{"translate":"medabots_server:entity.ice_block"}],"clickEvent":{"action":"run_command","value":"/trigger StageBuild set 44"}}]}'
data modify entity @s[advancements={medabots_server:special_items/rubberobo=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:entity.rubberobo","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 45"}}'
data modify entity @s[advancements={medabots_server:special_items/jammy=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:block.jammy","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 46"}}'
data modify entity @s[advancements={medabots_server:special_items/mission=true}] Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.pages append value '{"translate":"medabots_server:entity.mission.robattle","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 47"},"extra":[{"text":"\\n"},{"translate":"medabots_server:entity.mission.defeat_the_enemy","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 48"}},{"text":"\\n"},{"translate":"medabots_server:entity.mission.defeat_all_guards","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 49"}},{"text":"\\n"},{"translate":"medabots_server:entity.mission.destroy_all_cannons","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 50"}},{"text":"\\n"},{"translate":"medabots_server:entity.mission.run_until_the_time_is_up","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 51"}},{"text":"\\n"},{"translate":"medabots_server:entity.mission.open_the_exit_door","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 52"}},{"text":"\\n\\n"},{"translate":"medabots_server:entity.enemy_medabot","clickEvent":{"action":"run_command","value":"/trigger StageBuild set 53"}},{"text":"\\n\\n"},{"translate":"medabots_server:item.stage_builder.get_mission_data","clickEvent":{"action":"run_command","value":"/trigger StageBuild set -13"}}]}'

data modify entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:stage_builder",final:0b}}}].tag.medabots_server.final set value 1b
scoreboard players enable @s StageBuild

scoreboard players operation #temp Stage = @s Stage
execute as @e[tag=starting_area] at @s if score @s Stage = #temp Stage store result score #temp HomeY run data get entity @s Pos[1]
execute store result score #temp2 HomeY run data get entity @s Pos[1]
execute if score #temp HomeY = #temp2 HomeY run tag @s add go
tellraw @s[tag=!go,scores={StageBuild=1..}] {"translate":"medabots_server:message.stage.stage_builder.cannot_place","color":"red"}
scoreboard players reset @s[tag=!go,scores={StageBuild=1..}] StageBuild
execute if entity @s[tag=go,scores={StageBuild=1..},x_rotation=-45..45] rotated ~ 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/try
execute if entity @s[tag=go,scores={StageBuild=1..},x_rotation=45..-45] align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/try
tag @s remove go
scoreboard players reset #temp HomeY
scoreboard players reset #temp2 HomeY
execute if entity @s[scores={StageBuild=-1},x_rotation=-45..45] rotated ~ 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/remove
execute if entity @s[scores={StageBuild=-1},x_rotation=45..-45] align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/remove
execute if entity @s[scores={StageBuild=-2}] run function medabots_server:stage/build/save_version
execute if entity @s[scores={StageBuild=-3}] run function medabots_server:stage/build/load
execute if entity @s[scores={StageBuild=-4},x_rotation=-45..45] rotated ~ 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/bind_object
execute if entity @s[scores={StageBuild=-4},x_rotation=45..-45] align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/bind_object
execute if entity @s[scores={StageBuild=-5},x_rotation=-45..45] rotated ~ 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/increase_power
execute if entity @s[scores={StageBuild=-5},x_rotation=45..-45] align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/increase_power
execute if entity @s[scores={StageBuild=-6},x_rotation=-45..45] rotated ~ 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/decrease_power
execute if entity @s[scores={StageBuild=-6},x_rotation=45..-45] align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/decrease_power
execute if entity @s[scores={StageBuild=-7},x_rotation=-45..45] rotated ~ 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/increase_delay
execute if entity @s[scores={StageBuild=-7},x_rotation=45..-45] align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/increase_delay
execute if entity @s[scores={StageBuild=-8},x_rotation=-45..45] rotated ~ 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/decrease_delay
execute if entity @s[scores={StageBuild=-8},x_rotation=45..-45] align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/decrease_delay
execute if entity @s[scores={StageBuild=-9},x_rotation=-45..45] rotated ~ 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/increase_range
execute if entity @s[scores={StageBuild=-9},x_rotation=45..-45] align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/increase_range
execute if entity @s[scores={StageBuild=-10},x_rotation=-45..45] rotated ~ 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/decrease_range
execute if entity @s[scores={StageBuild=-10},x_rotation=45..-45] align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/decrease_range
execute if entity @s[scores={StageBuild=-11},x_rotation=-45..45] rotated ~ 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/unbind_object
execute if entity @s[scores={StageBuild=-11},x_rotation=45..-45] align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/unbind_object
execute if entity @s[scores={StageBuild=-12},x_rotation=-45..45] rotated ~ 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/go_to_bound_object
execute if entity @s[scores={StageBuild=-12},x_rotation=45..-45] align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/go_to_bound_object
execute if entity @s[scores={StageBuild=-13},x_rotation=-45..45] rotated ~ 0 positioned ^ ^ ^1 align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/get_mission_data
execute if entity @s[scores={StageBuild=-13},x_rotation=45..-45] align xz positioned ~0.5 ~ ~0.5 run function medabots_server:stage/build/get_mission_data