execute store result score #temp Stage run scoreboard players get @s Stage
execute if entity @s[tag=!changed_target,tag=!enemy_medabot] run function medabots_server:entities/medabot/player/point_to_target/boss
execute if entity @s[tag=!changed_target] run function medabots_server:entities/medabot/player/point_to_target/medabot
execute if entity @s[tag=!changed_target] run function medabots_server:entities/medabot/player/point_to_target/goal
scoreboard players reset #temp Stage
tag @s remove changed_target
execute if entity @e[tag=target,limit=1] run function medabots_server:entities/medabot/player/point_to_target/change