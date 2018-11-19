# mission text
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=8}] run title @a[distance=..5] title {"translate":"medabots_server:message.stage.mission","color":"green"}
execute if entity @s[scores={Dialog=32},tag=destroy_all_cannons] run title @a[distance=..5] title {"translate":"medabots_server:message.stage.mission.cannons","color":"green"}
execute if entity @s[scores={Dialog=32},tag=destroy_all_cannons] run title @a[distance=..5,tag=enemy] title {"translate":"medabots_server:message.stage.mission.cannons.enemy","color":"green"}
execute if entity @s[scores={Dialog=32},tag=defeat_all_guards] run title @a[distance=..5] title {"translate":"medabots_server:message.stage.mission.guards","color":"green"}
execute if entity @s[scores={Dialog=32},tag=defeat_all_guards] run title @a[distance=..5,tag=enemy] title {"translate":"medabots_server:message.stage.mission.guards.enemy","color":"green"}
execute if entity @s[scores={Dialog=32},tag=run_until_the_time_is_up] run title @a[distance=..5] title {"translate":"medabots_server:message.stage.mission.time","color":"green"}
execute if entity @s[scores={Dialog=32},tag=run_until_the_time_is_up] run title @a[distance=..5,tag=enemy] title {"translate":"medabots_server:message.stage.mission.time.enemy","color":"green"}
execute if entity @s[scores={Dialog=32},tag=open_the_exit_door] run title @a[distance=..5] title {"translate":"medabots_server:message.stage.mission.door","color":"green"}
execute if entity @s[scores={Dialog=32},tag=open_the_exit_door] run title @a[distance=..5,tag=enemy] title {"translate":"medabots_server:message.stage.mission.door.enemy","color":"green"}
execute if entity @s[scores={Dialog=32},tag=defeat_the_enemy] run title @a[distance=..5] title {"translate":"medabots_server:message.stage.mission.enemy","color":"green"}
execute if entity @s[scores={Dialog=32},tag=defeat_all_enemies] run title @a[distance=..5] title {"translate":"medabots_server:message.stage.mission.enemy.more","color":"green"}
execute if entity @s[scores={Dialog=80}] run scoreboard players set @e[distance=..5] Battle 1