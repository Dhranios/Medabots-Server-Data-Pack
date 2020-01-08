execute if entity @e[type=minecraft:creeper,tag=this_guard,tag=dying,limit=1] run tag @s add dying
execute if entity @e[type=minecraft:creeper,tag=this_guard,tag=walking,limit=1] run tag @s add walking
data modify entity @s Rotation[0] set from entity @e[type=minecraft:creeper,tag=this_guard,limit=1] Rotation[0]
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[tag=body,tag=!dying] run function medabots_server:animations/guard/body
execute if entity @s[tag=hammer,tag=!dying] run function medabots_server:animations/guard/hammer
execute if entity @s[tag=front_legs,tag=!dying] run function medabots_server:animations/guard/front_legs
execute if entity @s[tag=back_legs,tag=!dying] run function medabots_server:animations/guard/back_legs
execute if entity @s[tag=body,tag=dying] run function medabots_server:animations/guard/death/body
execute if entity @s[tag=hammer,tag=dying] run function medabots_server:animations/guard/death/hammer
execute if entity @s[tag=front_legs,tag=dying] run function medabots_server:animations/guard/death/front_legs
execute if entity @s[tag=back_legs,tag=dying] run function medabots_server:animations/guard/death/back_legs
data merge entity @s {Fire:2s}
tag @s remove walking
tag @s add found_owner
tag @s add found_owner_2