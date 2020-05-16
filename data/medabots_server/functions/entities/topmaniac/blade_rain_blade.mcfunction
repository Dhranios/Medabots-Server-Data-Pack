execute if score #temp Time matches 32 at @s[tag=detached,tag=!hit] run function medabots_server:entities/topmaniac/blade_rain_shot_blade
execute if score #temp Time matches 32 if entity @s[tag=!hit] run scoreboard players set @e[type=minecraft:spider,tag=topmaniac,distance=..0.7] Time 30
execute if score #temp Time matches 33 run tag @s remove hit