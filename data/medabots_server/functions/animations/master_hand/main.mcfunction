execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=dying,limit=1] run scoreboard players set @s[tag=!dying] AnimationProg 0
execute if entity @e[type=minecraft:ghast,tag=this_master_hand,tag=dying,limit=1] run tag @s add dying
data modify entity @s Rotation[0] set from entity @e[type=minecraft:ghast,tag=this_master_hand,limit=1] Rotation[0]
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[tag=hand,tag=!dying] run function medabots_server:animations/master_hand/hand
execute if entity @s[tag=thumb,tag=!dying] run function medabots_server:animations/master_hand/thumb
execute if entity @s[tag=index_finger,tag=!dying] run function medabots_server:animations/master_hand/index_finger
execute if entity @s[tag=middle_finger,tag=!dying] run function medabots_server:animations/master_hand/middle_finger
execute if entity @s[tag=ring_finger,tag=!dying] run function medabots_server:animations/master_hand/ring_finger
execute if entity @s[tag=pinkie,tag=!dying] run function medabots_server:animations/master_hand/pinkie
execute if entity @s[tag=hand,tag=dying] run function medabots_server:animations/master_hand/death/hand
execute if entity @s[tag=thumb,tag=dying] run function medabots_server:animations/master_hand/death/thumb
execute if entity @s[tag=index_finger,tag=dying] run function medabots_server:animations/master_hand/death/index_finger
execute if entity @s[tag=middle_finger,tag=dying] run function medabots_server:animations/master_hand/death/middle_finger
execute if entity @s[tag=ring_finger,tag=dying] run function medabots_server:animations/master_hand/death/ring_finger
execute if entity @s[tag=pinkie,tag=dying] run function medabots_server:animations/master_hand/death/pinkie
data merge entity @s {Fire:2s}
tag @s add found_owner
tag @s add found_owner_2