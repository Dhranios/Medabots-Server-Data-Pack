execute store result score #temp Stage run scoreboard players get @s Stage
execute as @a[tag=medabot] if score @s Stage = #temp Stage run tag @s add this_robattle
execute if entity @s[scores={Medabot=1..},type=minecraft:player] run function medabots_server:other/killer/message/medabot
execute if entity @s[scores={Medabot=1..},type=!minecraft:player,tag=try_special_message] run function medabots_server:other/killer/message/special
execute if entity @s[scores={Medabot=1..},type=!minecraft:player,tag=!try_special_message] run function medabots_server:other/killer/message/medabot
execute unless entity @s[scores={Medabot=0..}] run function medabots_server:other/killer/message/stage_enemy
scoreboard players reset #temp Stage
tag @e[tag=this_robattle] remove this_robattle