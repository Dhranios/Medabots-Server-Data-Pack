execute unless entity @s[tag=racer] run scoreboard players set @s[scores={Dialog=0,Verified=3}] Stage 3
execute unless entity @s[tag=racer] run scoreboard players set @s[scores={Dialog=0,Verified=3}] Time 220
execute unless entity @s[tag=racer] run scoreboard players set @s[scores={Dialog=0,Verified=3}] Rings 0
execute unless entity @s[tag=racer] run scoreboard players set @s[scores={Dialog=0,Verified=3}] RingsTotal 0
execute unless entity @s[tag=racer] run tag @s[scores={Dialog=0,Verified=3}] add training
execute unless entity @s[tag=racer] run teleport @s[scores={Dialog=0,Verified=3}] -510.0 89 263.0 0 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute unless entity @s[scores={FlyCourse=0..}] run tellraw @s[tag=racer] {"translate":"medabots_server:message.stage.fly_course.still_waiting","color":"green"}
tellraw @s[tag=racer,scores={FlyCourse=0..}] {"translate":"medabots_server:message.stage.fly_course.cant_leave","color":"green"}
execute unless entity @s[tag=racer] run scoreboard players set @s[scores={Dialog=0,Verified=3}] FlyCourse 1