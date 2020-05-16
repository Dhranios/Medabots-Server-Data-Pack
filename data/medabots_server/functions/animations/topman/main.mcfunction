execute if entity @e[type=minecraft:cave_spider,tag=this_topman,tag=dying,limit=1] run scoreboard players set @s[tag=!dying] AnimationProg 0
execute if entity @e[type=minecraft:cave_spider,tag=this_topman,tag=dying,limit=1] run tag @s add dying
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[tag=body,tag=!dying] run function medabots_server:animations/topman/body
execute if entity @s[tag=hands,tag=!dying] run function medabots_server:animations/topman/hands
execute if entity @s[tag=dying] run function medabots_server:animations/topman/death_animation
data merge entity @s {Fire:2s}
tag @s add found_owner
tag @s add found_owner_2