execute if score #temp Time matches 11 at @s[tag=detached,tag=!hit] run function medabots_server:entities/topmaniac/shot_blade
execute if score #temp Time matches 11 if entity @s[tag=!hit] run scoreboard players set @e[type=minecraft:spider,tag=topmaniac,distance=..0.7] Time 10
execute if score #temp Time matches 12 run tag @s remove hit