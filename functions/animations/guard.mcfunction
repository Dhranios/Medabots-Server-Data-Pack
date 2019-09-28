tag @s add this_guard
execute store result score #temp GuardNr run scoreboard players get @s GuardNr
execute as @e[tag=guard_model,tag=!found_owner] if score @s GuardNr = #temp GuardNr run function medabots_server:animations/guard/main
scoreboard players reset #temp GuardNr
tag @s remove this_guard