execute if entity @e[type=minecraft:husk,tag=this_cannon,tag=dying,limit=1] run tag @s add dying
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[tag=body,tag=!dying] run function medabots_server:animations/cannon/body
execute if entity @s[tag=head,tag=!dying] run function medabots_server:animations/cannon/head
execute if entity @s[tag=body,tag=dying] run function medabots_server:animations/cannon/death/body
execute if entity @s[tag=head,tag=dying] run function medabots_server:animations/cannon/death/head
data merge entity @s {Fire:2s}
tag @s add found_owner
tag @s add found_owner_2