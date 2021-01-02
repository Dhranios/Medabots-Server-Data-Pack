# Mission text
execute unless entity @s[scores={Dialog=0..}] run scoreboard players set @s Dialog 0
scoreboard players add @s[scores={Dialog=..80}] Dialog 1
scoreboard players operation #temp Stage = @s Stage
execute as @e if score @s Stage = #temp Stage run tag @s add this_mission
execute if entity @s[scores={Dialog=1}] as @e[tag=cannon,type=minecraft:husk,tag=this_mission] run tag @s remove enabled
execute if entity @s[scores={Dialog=1}] as @e[tag=!medabot,tag=this_mission] run tag @s add disabled
execute if entity @s[scores={Dialog=1}] as @e[tag=medabot,tag=!enemy_medabot,tag=this_mission] at @s facing entity @e[tag=medabot,tag=enemy_medabot,tag=this_mission,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=medabot,tag=enemy_medabot,tag=this_mission] at @s facing entity @e[tag=medabot,tag=!enemy_medabot,tag=this_mission,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=8}] run title @a[tag=this_mission,tag=!enemy_medabot] title {"translate":"medabots_server:message.stage.mission","color":"green"}
execute if entity @s[scores={Dialog=8}] run title @a[tag=this_mission,tag=enemy_medabot] title {"translate":"medabots_server:message.stage.mission.enemy","color":"green"}
execute if entity @s[scores={Dialog=32},tag=destroy_all_cannons] run title @a[tag=this_mission] title {"translate":"medabots_server:message.stage.mission.cannons","color":"green"}
execute if entity @s[scores={Dialog=32},tag=defeat_all_guards] run title @a[tag=this_mission] title {"translate":"medabots_server:message.stage.mission.guards","color":"green"}
execute if entity @s[scores={Dialog=32},tag=run_until_the_time_is_up] run title @a[tag=this_mission] title {"translate":"medabots_server:message.stage.mission.time","color":"green"}
execute if entity @s[scores={Dialog=32},tag=open_the_exit_door] run title @a[tag=this_mission] title {"translate":"medabots_server:message.stage.mission.door","color":"green"}
execute if entity @s[scores={Dialog=32},tag=defeat_the_enemy] run title @a[tag=this_mission] title {"translate":"medabots_server:message.stage.mission.enemy","color":"green"}
execute if entity @s[scores={Dialog=32},tag=defeat_all_enemies] run title @a[tag=this_mission] title {"translate":"medabots_server:message.stage.mission.enemy.more","color":"green"}
execute if entity @s[scores={Dialog=80}] run scoreboard players set @e[tag=this_mission,tag=!mission_entity] State 1
execute if entity @s[scores={Dialog=80}] as @e[tag=!medabot] if score @s Stage = #temp Stage run tag @s remove disabled

# Custom stage
execute if entity @s[scores={Dialog=81},tag=custom_stage] store result score @s BattlingMedabots if entity @e[scores={Medabot=0..,State=1},tag=this_mission]
execute if entity @s[scores={Dialog=81},tag=custom_stage,tag=!open_the_exit_door] run tag @e[distance=..0.7,tag=powered,tag=door,type=minecraft:armor_stand] add no_open
execute if entity @s[scores={Dialog=81},tag=custom_stage,tag=open_the_exit_door] if entity @e[distance=..0.7,tag=powered,tag=door,type=minecraft:armor_stand] run tag @s add mission_success
execute if entity @s[scores={Dialog=81,BattlingMedabots=1},tag=custom_stage,tag=run_until_the_time_is_up] unless entity @e[tag=mission_entity,tag=this_mission] run tag @s add mission_success
execute if entity @s[tag=custom_stage,tag=!run_until_the_time_is_up,tag=!defeat_the_enemy,tag=!destroy_all_cannons,tag=!defeat_all_guards,tag=!open_the_exit_door] unless entity @e[tag=mission_entity,tag=this_mission] run tag @s add mission_success
execute if entity @s[scores={Dialog=81},tag=custom_stage,tag=destroy_all_cannons] unless entity @e[tag=mission_entity,tag=this_mission,tag=cannon,type=minecraft:husk] run tag @s add mission_success
execute if entity @s[scores={Dialog=81},tag=custom_stage,tag=defeat_all_guards] unless entity @e[tag=mission_entity,tag=this_mission,tag=guard,type=minecraft:creeper] run tag @s add mission_success
tag @s[scores={Dialog=81,BattlingMedabots=1},tag=custom_stage,tag=defeat_the_enemy] add mission_success
execute if entity @s[tag=mission_success] run title @a[tag=this_mission] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[tag=door,tag=this_mission,distance=..0.7,type=minecraft:armor_stand,scores={PowerNeeded=1..}] PowerNeeded 0
execute if entity @s[tag=mission_success] run scoreboard players set @e[tag=door,tag=this_mission,tag=mission_door,type=minecraft:armor_stand,scores={PowerNeeded=1..}] PowerNeeded 0
execute if entity @s[tag=mission_success] run tag @e[tag=door,tag=this_mission,tag=mission_door,type=minecraft:armor_stand] remove mission_door
execute if entity @s[tag=mission_success] run tag @e[tag=door,tag=this_mission,tag=no_open,type=minecraft:armor_stand] remove no_open
execute if entity @s[tag=mission_success] run tag @e[scores={Medabot=0..,State=1..2},tag=this_mission,tag=enemy_medabot,type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Medabot=0..,State=1..2},tag=this_mission,tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run tag @a[tag=this_mission] add remove_bossbar
execute if entity @s[tag=mission_success] run kill @s
scoreboard players reset @s[scores={BattlingMedabots=1..},tag=custom_stage] BattlingMedabots

scoreboard players reset #temp Stage
tag @e[tag=this_mission] remove this_mission

