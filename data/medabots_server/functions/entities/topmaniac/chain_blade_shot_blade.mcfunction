execute if score #temp Time matches 1 run scoreboard players set @s AnimationProg 0
execute if score #temp Time matches 2..132 positioned as @s[tag=detached,tag=!hit] run function medabots_server:entities/topmaniac/shot_blade
execute if score #temp Time matches 132 if entity @s[tag=!hit] run scoreboard players set @e[type=minecraft:spider,tag=topmaniac,distance=..0.7] Time 131
execute if score #temp Time matches 133 run tag @s remove hit