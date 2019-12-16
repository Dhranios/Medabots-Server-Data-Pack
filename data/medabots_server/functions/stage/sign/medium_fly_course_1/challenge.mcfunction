execute unless entity @s[scores={StageIndex=-1..}] if entity @s[scores={Dialog=0,Verified=3},gamemode=adventure] run function medabots_server:gamemodes/fly_course/set_stats
execute unless entity @s[scores={StageIndex=-1..}] run scoreboard players set @s[scores={Dialog=0,Verified=3},gamemode=adventure] State 1
execute unless entity @s[scores={StageIndex=-1..}] run scoreboard players set @s[scores={Dialog=0,Verified=3},gamemode=adventure] StageVersion 1
execute unless entity @s[scores={StageIndex=-1..}] run scoreboard players set @s[scores={Dialog=0,Verified=3},gamemode=adventure] Stage 2
execute unless entity @s[scores={StageIndex=-1..}] if entity @s[scores={Dialog=0,Verified=3},gamemode=adventure] run function medabots_server:stage/fly_course/next_challenge_ring/medium_1
execute unless entity @s[scores={StageIndex=-1..}] run teleport @s[scores={Dialog=0,Verified=3},gamemode=adventure] -160.0 112 -118.0 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
tellraw @s[scores={StageIndex=-1..,State=0}] {"translate":"medabots_server:message.stage.fly_course.still_waiting","color":"green"}
tellraw @s[scores={StageIndex=-1..,State=3}] {"translate":"medabots_server:message.stage.fly_course.cant_leave","color":"green"}