data modify storage medabots_server:topmaniac Tags set from entity @e[type=minecraft:spider,tag=this_topmaniac,limit=1] Tags
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:topmaniac {Tags:["dying"]} run scoreboard players set @s[tag=!dying] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:topmaniac {Tags:["roll_start"]} run scoreboard players set @s[tag=!roll_start] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:topmaniac {Tags:["roll"]} run scoreboard players set @s[tag=!roll] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:topmaniac {Tags:["roll_stop"]} run scoreboard players set @s[tag=!roll_stop] AnimationProg 0
data modify entity @s Tags append from storage medabots_server:topmaniac Tags[]
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[tag=body,tag=!dying] run function medabots_server:animations/topmaniac/body
execute if entity @s[tag=blade,tag=!dying] run function medabots_server:animations/topmaniac/blade
execute if entity @s[tag=body,tag=dying] run function medabots_server:animations/topmaniac/death/body
execute if entity @s[tag=blade,tag=dying] run function medabots_server:animations/topmaniac/death/blade
tag @s remove topmaniac
data merge entity @s {Fire:2s}
tag @s add found_owner
tag @s add found_owner_2