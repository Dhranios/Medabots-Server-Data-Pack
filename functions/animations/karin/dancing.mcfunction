scoreboard players set @s[scores={AnimationProg=160}] AnimationProg 0
scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=1..40}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=41..80}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=81..120}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=121..160}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 2

execute store result score #temp Time run data get entity @s Pose.LeftArm[1]
execute if entity @s[scores={AnimationProg=1..40}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=41..120}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=121..160}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time

execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..40}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=41..80}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=81..120}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=121..160}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 2

execute store result score #temp Time run data get entity @s Pose.RightArm[1]
execute if entity @s[scores={AnimationProg=1..40}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=41..120}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=121..160}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time