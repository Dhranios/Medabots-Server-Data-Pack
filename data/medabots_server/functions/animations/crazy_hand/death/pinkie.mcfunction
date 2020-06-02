execute rotated ~ 0 run teleport @s ^ ^0.4 ^0.5
execute store result entity @s Rotation[0] float 0.01 run data get entity @e[type=minecraft:ghast,tag=this_crazy_hand,limit=1] Rotation[0] 100
execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[tag=smash_bros] run function medabots_server:animations/crazy_hand/death/final_destination/pinkie
execute if entity @s[tag=smash_melee] run function medabots_server:animations/crazy_hand/death/final_destination/pinkie
execute if entity @s[tag=smash_brawl] run function medabots_server:animations/crazy_hand/death/final_destination/pinkie
execute if entity @s[tag=smash_4] run function medabots_server:animations/crazy_hand/death/vanish/pinkie
execute if entity @s[tag=!smash_bros,tag=!smash_melee,tag=!smash_brawl,tag=!smash_4] run function medabots_server:animations/crazy_hand/death/generic/pinkie