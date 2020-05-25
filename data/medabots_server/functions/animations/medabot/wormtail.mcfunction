# Move with
execute at @e[tag=this_medabot,tag=source,limit=1] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~

# Walk animation
execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s[tag=!sneak_pos] {Pose:{Head:[0.001f,0.001f,0.001f]}}
data merge entity @s[tag=!walking,tag=!running,tag=!sneak_pos] {Pose:{Head:[0.001f,0.001f,0.001f]}}
data merge entity @s[tag=!walking,tag=!running,tag=!sneaking,tag=sneak_pos] {Pose:{Head:[-10.0f,0.001f,0.001f]}}
tag @s[tag=walk_animation_other_way,tag=!walking,tag=!running,tag=!sneaking] remove walk_animation_other_way
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[tag=walking,tag=!walk_animation_other_way,tag=!dancing,tag=!carried] store result entity @s Pose.Head[0] float 0.1 run scoreboard players operation #temp Time += #40 Constants
execute if entity @s[tag=walking,tag=walk_animation_other_way,tag=!dancing,tag=!carried] store result entity @s Pose.Head[0] float 0.1 run scoreboard players operation #temp Time -= #40 Constants
execute if entity @s[tag=running,tag=!walk_animation_other_way,tag=!dancing,tag=!carried] store result entity @s Pose.Head[0] float 0.1 run scoreboard players operation #temp Time += #80 Constants
execute if entity @s[tag=running,tag=walk_animation_other_way,tag=!dancing,tag=!carried] store result entity @s Pose.Head[0] float 0.1 run scoreboard players operation #temp Time -= #80 Constants
execute if entity @s[tag=sneaking,tag=!walk_animation_other_way,tag=!dancing,tag=!carried] store result entity @s Pose.Head[0] float 0.1 run scoreboard players operation #temp Time += #20 Constants
execute if entity @s[tag=sneaking,tag=walk_animation_other_way,tag=!dancing,tag=!carried] store result entity @s Pose.Head[0] float 0.1 run scoreboard players operation #temp Time -= #20 Constants
execute if score #temp Time matches 80.. run tag @s add walk_animation_other_way
execute if score #temp Time matches ..-80 run tag @s remove walk_animation_other_way
scoreboard players reset #temp Time