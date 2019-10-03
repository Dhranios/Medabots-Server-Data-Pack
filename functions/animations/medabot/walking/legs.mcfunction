execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[tag=sneaking] run scoreboard players add #temp Time 100
execute if entity @s[tag=walking,tag=!walk_animation_other_way] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 20
execute if entity @s[tag=walking,tag=walk_animation_other_way] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 20
execute if entity @s[tag=running,tag=!walk_animation_other_way] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 40
execute if entity @s[tag=running,tag=walk_animation_other_way] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 40
execute if entity @s[tag=sneaking,tag=!walk_animation_other_way] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 10
execute if entity @s[tag=sneaking,tag=walk_animation_other_way] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 10
execute if score #temp Time matches 80.. run tag @s add walk_animation_other_way
execute if score #temp Time matches ..-80 run tag @s remove walk_animation_other_way
execute if entity @s[tag=sneaking] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 100
scoreboard players reset #temp Time