# Move with
execute if entity @a[tag=sneak_pos,tag=this_medabot,limit=1] run tag @s add sneak_pos
execute at @e[tag=this_medabot,tag=chest,limit=1] rotated ~ 0 run teleport @s[tag=!sneak_pos] ^ ^-.37 ^-.25
execute at @e[tag=this_medabot,tag=chest,limit=1] rotated ~ 0 run teleport @s[tag=sneak_pos] ^ ^-.32 ^-.25
execute store result entity @s Rotation[0] float 0.01 run data get entity @e[tag=this_medabot,tag=chest,limit=1] Rotation[0] 100
tag @s[tag=sneak_pos] remove sneak_pos

execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1] 2
execute if entity @s[tag=!move_right] store result entity @s Pose.Head[1] float 0.5 run scoreboard players operation #temp Time += #5 Constants
execute if entity @s[tag=move_right] store result entity @s Pose.Head[1] float 0.5 run scoreboard players operation #temp Time -= #5 Constants
execute if score #temp Time matches 60.. run tag @s add move_right
execute if score #temp Time matches ..-60 run tag @s remove move_right
execute store result score #temp Time run data get entity @s Pose.Head[0] 2
execute if entity @s[tag=!move_down] store result entity @s Pose.Head[0] float 0.5 run scoreboard players operation #temp Time += #2 Constants
execute if entity @s[tag=move_down] store result entity @s Pose.Head[0] float 0.5 run scoreboard players operation #temp Time -= #2 Constants
execute if score #temp Time matches 21.. run tag @s add move_down
execute if score #temp Time matches ..-21 run tag @s remove move_down
scoreboard players reset #temp Time