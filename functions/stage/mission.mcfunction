# mission text
execute unless entity @s[scores={Dialog=0..}] run scoreboard players set @s Dialog 0
scoreboard players add @s[scores={Dialog=..80}] Dialog 1
execute store result score #temp Stage run scoreboard players get @s Stage
execute as @e[tag=hostile,scores={Medabot=0..}] if score @s Stage = #temp Stage run tag @s add this_mission
execute if entity @s[scores={Dialog=8}] run title @a[tag=this_mission,tag=!enemy_medabot] title {"translate":"medabots_server:message.stage.mission","color":"green"}
execute if entity @s[scores={Dialog=8}] run title @a[tag=this_mission,tag=enemy_medabot] title {"translate":"medabots_server:message.stage.mission.enemy","color":"green"}
execute if entity @s[scores={Dialog=32},tag=destroy_all_cannons] run title @a[tag=this_mission] title {"translate":"medabots_server:message.stage.mission.cannons","color":"green"}
execute if entity @s[scores={Dialog=32},tag=defeat_all_guards] run title @a[tag=this_mission] title {"translate":"medabots_server:message.stage.mission.guards","color":"green"}
execute if entity @s[scores={Dialog=32},tag=run_until_the_time_is_up] run title @a[tag=this_mission] title {"translate":"medabots_server:message.stage.mission.time","color":"green"}
execute if entity @s[scores={Dialog=32},tag=open_the_exit_door] run title @a[tag=this_mission] title {"translate":"medabots_server:message.stage.mission.door","color":"green"}
execute if entity @s[scores={Dialog=32},tag=defeat_the_enemy] run title @a[tag=this_mission] title {"translate":"medabots_server:message.stage.mission.enemy","color":"green"}
execute if entity @s[scores={Dialog=32},tag=defeat_all_enemies] run title @a[tag=this_mission] title {"translate":"medabots_server:message.stage.mission.enemy.more","color":"green"}
execute if entity @s[scores={Dialog=80}] run scoreboard players set @e[tag=this_mission] Battle 1
scoreboard players reset #temp Stage
tag @e[tag=this_mission] remove this_mission