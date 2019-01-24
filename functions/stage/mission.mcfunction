# mission text
execute unless entity @s[scores={Dialog=0..}] run scoreboard players set @s Dialog 0
scoreboard players add @s[scores={Dialog=..80}] Dialog 1
execute if entity @s[scores={Dialog=8}] as @a[tag=hostile] if score @s Stage = @e[distance=..0.1,tag=mission,limit=1] Stage run tag @s add this_mission
execute if entity @s[scores={Dialog=8}] run title @a[tag=this_mission] title {"translate":"medabots_server:message.stage.mission","color":"green"}
execute if entity @s[scores={Dialog=8}] run tag @a[tag=this_mission] remove this_mission
execute if entity @s[scores={Dialog=32}] as @a[tag=hostile] if score @s Stage = @e[distance=..0.1,tag=mission,limit=1] Stage run tag @s add this_mission
execute if entity @s[scores={Dialog=32},tag=destroy_all_cannons] run title @a[tag=this_mission,tag=!enemy_medabot] title {"translate":"medabots_server:message.stage.mission.cannons","color":"green"}
execute if entity @s[scores={Dialog=32},tag=destroy_all_cannons] run title @a[tag=this_mission,tag=enemy_medabot] title {"translate":"medabots_server:message.stage.mission.cannons.enemy","color":"green"}
execute if entity @s[scores={Dialog=32},tag=defeat_all_guards] run title @a[tag=this_mission,tag=!enemy_medabot] title {"translate":"medabots_server:message.stage.mission.guards","color":"green"}
execute if entity @s[scores={Dialog=32},tag=defeat_all_guards] run title @a[tag=this_mission,tag=enemy_medabot] title {"translate":"medabots_server:message.stage.mission.guards.enemy","color":"green"}
execute if entity @s[scores={Dialog=32},tag=run_until_the_time_is_up] run title @a[tag=this_mission,tag=!enemy_medabot] title {"translate":"medabots_server:message.stage.mission.time","color":"green"}
execute if entity @s[scores={Dialog=32},tag=run_until_the_time_is_up] run title @a[tag=this_mission,tag=enemy_medabot] title {"translate":"medabots_server:message.stage.mission.time.enemy","color":"green"}
execute if entity @s[scores={Dialog=32},tag=open_the_exit_door] run title @a[tag=this_mission,tag=!enemy_medabot] title {"translate":"medabots_server:message.stage.mission.door","color":"green"}
execute if entity @s[scores={Dialog=32},tag=open_the_exit_door] run title @a[tag=this_mission,tag=enemy_medabot] title {"translate":"medabots_server:message.stage.mission.door.enemy","color":"green"}
execute if entity @s[scores={Dialog=32},tag=defeat_the_enemy] run title @a[tag=this_mission] title {"translate":"medabots_server:message.stage.mission.enemy","color":"green"}
execute if entity @s[scores={Dialog=32},tag=defeat_all_enemies] run title @a[tag=this_mission] title {"translate":"medabots_server:message.stage.mission.enemy.more","color":"green"}
execute if entity @s[scores={Dialog=32}] run tag @a[tag=this_mission] remove this_mission
execute if entity @s[scores={Dialog=80}] as @e[tag=hostile] if score @s Stage = @e[distance=..0.1,tag=mission,limit=1] Stage run tag @s add this_mission
execute if entity @s[scores={Dialog=80}] run scoreboard players set @e[tag=this_mission] Battle 1
execute if entity @s[scores={Dialog=80}] run tag @e[tag=this_mission] remove this_mission
