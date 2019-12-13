execute unless entity @s[tag=racer] if entity @s[scores={Dialog=0,Verified=3}] run function medabots_server:gamemodes/fly_course/set_stats
execute unless entity @s[tag=racer] run scoreboard players set @s[scores={Dialog=0,Verified=3}] Stage 3
execute unless entity @s[tag=racer] run function medabots_server:stage/fly_course/next_challenge_ring/hard_1
execute unless entity @s[tag=racer] run tag @s[scores={Dialog=0,Verified=3}] add challenge
execute unless entity @s[tag=racer] run teleport @s[scores={Dialog=0,Verified=3}] -510.0 89 263.0 0 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute unless entity @s[scores={FlyCourse=0..}] run tellraw @s[tag=racer] {"translate":"medabots_server:message.stage.fly_course.still_waiting","color":"green"}
tellraw @s[tag=racer,scores={FlyCourse=0..}] {"translate":"medabots_server:message.stage.fly_course.cant_leave","color":"green"}