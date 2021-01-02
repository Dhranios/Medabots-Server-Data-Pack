tag @s add this_guard
scoreboard players operation #temp GuardNr = @s GuardNr
data modify storage medabots_server:data guard.tags set from entity @s Tags
execute as @e[type=minecraft:armor_stand,tag=guard_model,tag=!found_owner] if score @s GuardNr = #temp GuardNr run function medabots_server:animations/guard/main
scoreboard players reset #temp GuardNr
tag @s remove this_guard