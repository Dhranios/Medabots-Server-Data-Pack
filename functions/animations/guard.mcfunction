tag @s add this_guard
scoreboard players operation #temp GuardNr = @s GuardNr
execute as @e[tag=guard_model,tag=!found_owner] if score @s GuardNr = #temp GuardNr run function medabots_server:animations/guard/main
scoreboard players reset #temp GuardNr
tag @s remove this_guard