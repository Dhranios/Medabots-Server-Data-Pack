execute if entity @e[tag=this_guard,limit=1,tag=attack] run scoreboard players set @s AnimationProg 0
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 18
execute if entity @s[scores={AnimationProg=1}] as @e[tag=this_guard,limit=1] run function medabots_server:entities/guard/hurt
data merge entity @s[scores={AnimationProg=2}] {Pose:{Head:[0.001f,0.001f,0.001f]}}
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=2}] run tag @e[tag=this_guard,limit=1] remove hurt
scoreboard players reset @s[scores={AnimationProg=2}] AnimationProg
