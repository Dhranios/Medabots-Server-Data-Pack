execute store result score #temp GuardNr run scoreboard players get @s GuardNr
execute as @e[scores={GuardNr=0..},tag=guard,tag=!dead] if score @s GuardNr = #temp GuardNr run tag @s add this_guard
execute at @e[tag=this_guard,limit=1] run function medabots_server:animations/guard/main
scoreboard players reset #temp GuardNr
tag @e[tag=this_guard] remove this_guard