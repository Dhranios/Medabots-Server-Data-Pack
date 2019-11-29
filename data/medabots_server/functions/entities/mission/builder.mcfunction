execute positioned ~-4 ~3 ~-4 run tag @a[scores={Battle=1},dx=8,dy=4,dz=8] add building_player
effect give @a[tag=building_player] minecraft:night_vision 2 0 true
effect give @a[tag=building_player] minecraft:blindness 2 0 true
scoreboard players set @a[tag=building_player] Battle 2
tag @a[tag=building_player] add add_bossbar

execute positioned ~ ~3 ~ run kill @e[distance=..0.7,tag=door,type=minecraft:area_effect_cloud]

summon minecraft:item ~ 255 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["build_stage"],NoGravity:1b}
data modify entity @e[tag=build_stage,limit=1] Item set from entity @s ArmorItems[3]

execute as @e[tag=build_stage] run function medabots_server:entities/mission/build
tag @a remove building_player
kill @e[tag=build_stage]

execute as @e[tag=door,tag=!stage_builder,type=minecraft:area_effect_cloud] at @s if entity @e[distance=..0.7,tag=door,tag=stage_builder,type=minecraft:area_effect_cloud] run tag @s add mission_door

execute if entity @s[tag=robattle] run summon minecraft:armor_stand ~ ~3 ~ {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time","custom_stage"],Duration:2147483647}
execute if entity @s[tag=defeat_the_enemy] run summon minecraft:area_effect_cloud ~ ~3 ~ {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy","custom_stage"],Duration:2147483647}
execute if entity @s[tag=defeat_all_guards] run summon minecraft:area_effect_cloud ~ ~3 ~ {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_all_guards","custom_stage"],Duration:2147483647}
execute if entity @s[tag=destroy_all_cannons] run summon minecraft:area_effect_cloud ~ ~3 ~ {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","destroy_all_cannons","custom_stage"],Duration:2147483647}
execute if entity @s[tag=run_until_the_time_is_up] run summon minecraft:area_effect_cloud ~ ~3 ~ {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","run_until_the_time_is_up","custom_stage"],Duration:2147483647}
execute if entity @s[tag=open_the_exit_door] run summon minecraft:area_effect_cloud ~ ~3 ~ {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","open_the_exit_door","custom_stage"],Duration:2147483647}

kill @s