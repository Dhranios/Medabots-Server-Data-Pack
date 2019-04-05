# mission text
scoreboard players add @s[scores={Dialog=81..161}] Dialog 1
execute store result score #temp Stage run scoreboard players get @s Stage
execute as @e[tag=hostile,scores={Medabot=0..}] if score @s Stage = #temp Stage run tag @s add this_mission
execute if entity @s[scores={Dialog=82},tag=!run_until_the_time_is_up] as @a[tag=hostile,tag=this_mission] run title @s title {"translate":"medabots_server:message.stage.mission.time_is_up","color":"green"}
execute if entity @s[scores={Dialog=82..},tag=!run_until_the_time_is_up] as @e[tag=hostile,tag=this_mission] run scoreboard players set @s[scores={Time=1..}] Time 950
execute if entity @s[scores={Dialog=82..},tag=!run_until_the_time_is_up] as @e[tag=hostile,tag=this_mission] run scoreboard players set @s Battle 2
execute if entity @s[scores={Dialog=162},tag=!run_until_the_time_is_up] as @a[tag=hostile,tag=this_mission] run scoreboard players set @s Battle 0
execute if entity @s[scores={Dialog=82},tag=run_until_the_time_is_up] as @e[type=!minecraft:player,tag=hostile,tag=enemy_medabot,tag=this_mission] run tag @s add dead
execute if entity @s[scores={Dialog=82},tag=run_until_the_time_is_up] as @a[tag=hostile,tag=enemy_medabot,tag=this_mission] run scoreboard players set @s LeaveStage 1
execute if entity @s[scores={Dialog=82},tag=run_until_the_time_is_up] as @e[type=!minecraft:player,tag=run_until_the_time_is_up,tag=this_mission] run tag @s remove run_until_the_time_is_up
scoreboard players reset #temp Stage
tag @e[tag=this_mission] remove this_mission