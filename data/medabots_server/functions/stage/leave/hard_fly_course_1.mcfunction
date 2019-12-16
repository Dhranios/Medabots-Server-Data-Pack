execute unless entity @s[scores={StageIndex=-1..}] run teleport @s[scores={Dialog=0,Verified=3}] -513 81 263 -180 0
tellraw @s[scores={StageIndex=-1..,State=0}] {"translate":"medabots_server:message.stage.fly_course.still_waiting","color":"green"}
tellraw @s[scores={StageIndex=-1..,State=3}] {"translate":"medabots_server:message.stage.fly_course.cant_leave","color":"green"}
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}