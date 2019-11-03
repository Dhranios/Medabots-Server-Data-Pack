execute store result score #temp Time run data get entity @s Pose.RightArm[0] 2
execute if entity @s[tag=!walk_animation_other_way] store result entity @s Pose.RightArm[0] float 0.5 run scoreboard players remove #temp Time 20
execute if entity @s[tag=walk_animation_other_way] store result entity @s Pose.RightArm[0] float 0.5 run scoreboard players add #temp Time 20
execute if score #temp Time matches ..-20 run tag @s add walk_animation_other_way
execute if score #temp Time matches 20.. run tag @s remove walk_animation_other_way
execute store result entity @s Pose.LeftArm[0] float -0.5 run scoreboard players get #temp Time
scoreboard players reset #temp Time