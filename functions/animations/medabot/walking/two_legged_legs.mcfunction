execute store result score #temp Time run data get entity @s Pose.Head[0] 2
execute if entity @s[tag=walking,tag=!walk_animation_other_way,scores={FloorSwitchTime=0}] store result entity @s Pose.Head[0] float 0.5 run scoreboard players operation #temp Time += #20 Constants
execute if entity @s[tag=walking,tag=walk_animation_other_way,scores={FloorSwitchTime=0}] store result entity @s Pose.Head[0] float 0.5 run scoreboard players operation #temp Time -= #20 Constants
execute if entity @s[tag=running,tag=!walk_animation_other_way,scores={FloorSwitchTime=0}] store result entity @s Pose.Head[0] float 0.5 run scoreboard players operation #temp Time += #40 Constants
execute if entity @s[tag=running,tag=walk_animation_other_way,scores={FloorSwitchTime=0}] store result entity @s Pose.Head[0] float 0.5 run scoreboard players operation #temp Time -= #40 Constants
execute if entity @s[tag=sneaking,tag=!walk_animation_other_way,scores={FloorSwitchTime=0}] store result entity @s Pose.Head[0] float 0.5 run scoreboard players operation #temp Time += #10 Constants
execute if entity @s[tag=sneaking,tag=walk_animation_other_way,scores={FloorSwitchTime=0}] store result entity @s Pose.Head[0] float 0.5 run scoreboard players operation #temp Time -= #10 Constants

execute if entity @s[tag=walking,tag=!walk_animation_other_way,scores={FloorSwitchTime=1}] store result entity @s Pose.Head[0] float 0.5 run scoreboard players operation #temp Time -= #20 Constants
execute if entity @s[tag=walking,tag=walk_animation_other_way,scores={FloorSwitchTime=1}] store result entity @s Pose.Head[0] float 0.5 run scoreboard players operation #temp Time += #20 Constants
execute if entity @s[tag=running,tag=!walk_animation_other_way,scores={FloorSwitchTime=1}] store result entity @s Pose.Head[0] float 0.5 run scoreboard players operation #temp Time -= #40 Constants
execute if entity @s[tag=running,tag=walk_animation_other_way,scores={FloorSwitchTime=1}] store result entity @s Pose.Head[0] float 0.5 run scoreboard players operation #temp Time += #40 Constants
execute if entity @s[tag=sneaking,tag=!walk_animation_other_way,scores={FloorSwitchTime=1}] store result entity @s Pose.Head[0] float 0.5 run scoreboard players operation #temp Time -= #10 Constants
execute if entity @s[tag=sneaking,tag=walk_animation_other_way,scores={FloorSwitchTime=1}] store result entity @s Pose.Head[0] float 0.5 run scoreboard players operation #temp Time += #10 Constants

execute if score #temp Time matches 100.. run tag @s[scores={FloorSwitchTime=0}] add walk_animation_other_way
execute if score #temp Time matches ..-100 run tag @s[scores={FloorSwitchTime=0}] remove walk_animation_other_way

execute if score #temp Time matches 100.. run tag @s[scores={FloorSwitchTime=1}] remove walk_animation_other_way
execute if score #temp Time matches ..-100 run tag @s[scores={FloorSwitchTime=1}] add walk_animation_other_way
scoreboard players reset #temp Time