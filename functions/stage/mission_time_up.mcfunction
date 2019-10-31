# Mission text
scoreboard players add @s[scores={Dialog=81..161}] Dialog 1
execute store result score #temp Stage run scoreboard players get @s Stage
execute as @e[tag=medabot] if score @s Stage = #temp Stage run tag @s add this_mission
execute if entity @s[scores={Dialog=82},tag=!run_until_the_time_is_up] as @a[tag=this_mission] run title @s title {"translate":"medabots_server:message.stage.mission.time_is_up","color":"green"}
execute if entity @s[scores={Dialog=82..},tag=!run_until_the_time_is_up] as @e[tag=this_mission] run scoreboard players set @s[scores={Time=1..}] Time 950
execute if entity @s[scores={Dialog=82..},tag=!run_until_the_time_is_up] as @e[tag=this_mission] run scoreboard players set @s Battle 2
execute if entity @s[scores={Dialog=162},tag=!run_until_the_time_is_up] as @a[tag=this_mission] run function medabots_server:stage/left_server_enforced
execute if entity @s[scores={Dialog=82},tag=run_until_the_time_is_up] as @e[type=minecraft:skeleton,tag=enemy_medabot,tag=this_mission] run tag @s add dead
execute if entity @s[scores={Dialog=82},tag=run_until_the_time_is_up] as @a[tag=enemy_medabot,tag=this_mission] run function medabots_server:stage/left_server_enforced
execute if entity @s[scores={Dialog=82},tag=run_until_the_time_is_up] as @e[type=!minecraft:player,tag=mission_entity,tag=this_mission] run tag @s remove mission_entity
tag @s[scores={Dialog=82},tag=run_until_the_time_is_up] remove run_until_the_time_is_up
scoreboard players reset #temp Stage
tag @e[tag=this_mission] remove this_mission