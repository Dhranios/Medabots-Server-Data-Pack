teleport @s[tag=!racer,scores={Dialog=0,Verified=3}] -513 81 263
execute unless entity @s[scores={FlyCourse=0..}] run tellraw @s[tag=racer] {"translate":"medabots_server:message.stage.cant_leave","color":"green"}
tellraw @s[tag=racer,scores={FlyCourse=0..}] {"translate":"medabots_server:message.stage.fly_course.cant_leave","color":"green"}
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}