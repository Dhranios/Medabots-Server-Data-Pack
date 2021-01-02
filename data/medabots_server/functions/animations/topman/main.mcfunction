execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data topman{tags:["dying"]} run scoreboard players set @s[tag=!dying] AnimationProg 0
data modify entity @s Tags append from storage medabots_server:data topman.tags[]
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[tag=body,tag=!dying] run function medabots_server:animations/topman/body
execute if entity @s[tag=hands,tag=!dying] run function medabots_server:animations/topman/hands
execute if entity @s[tag=dying] run function medabots_server:animations/topman/death_animation
tag @s remove topman
tag @s add found_owner
tag @s add found_owner_2