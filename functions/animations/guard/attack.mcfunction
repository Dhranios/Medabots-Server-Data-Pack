scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 18
execute if entity @s[scores={AnimationProg=3}] as @e[tag=this_guard,limit=1] at @s positioned ^ ^ ^0.5 run function medabots_server:entities/guard/attack
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 18
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=20}] run tag @e[tag=this_guard] remove attack
scoreboard players reset @s[scores={AnimationProg=20}] AnimationProg