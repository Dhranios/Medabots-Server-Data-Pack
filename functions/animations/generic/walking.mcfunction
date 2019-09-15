execute store result score #temp Time run data get entity @s Pose.RightArm[0] 10
execute if entity @s[tag=walking,tag=!walk_animation_other_way] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players operation #temp Time += #20 Constants
execute if entity @s[tag=walking,tag=walk_animation_other_way] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players operation #temp Time -= #20 Constants
execute if entity @s[tag=running,tag=!walk_animation_other_way] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players operation #temp Time += #40 Constants
execute if entity @s[tag=running,tag=walk_animation_other_way] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players operation #temp Time -= #40 Constants
execute store result entity @s Pose.LeftArm[0] float 0.1 run scoreboard players operation #temp Time *= #-1 Constants
execute store result entity @s Pose.RightLeg[0] float 0.1 run scoreboard players get #temp Time
execute store result entity @s Pose.LeftLeg[0] float 0.1 run scoreboard players operation #temp Time *= #-1 Constants
execute if score #temp Time matches 120.. run tag @s add walk_animation_other_way
execute if score #temp Time matches ..-120 run tag @s remove walk_animation_other_way
scoreboard players reset #temp Time
tag @s add was_walking