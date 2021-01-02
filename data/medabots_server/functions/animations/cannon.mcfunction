tag @s add this_cannon
scoreboard players operation #temp CannonNr = @s CannonNr
data modify storage medabots_server:data cannon.tags set from entity @s Tags
execute as @e[type=minecraft:armor_stand,tag=cannon_model,tag=!found_owner] if score @s CannonNr = #temp CannonNr run function medabots_server:animations/cannon/main
scoreboard players reset #temp CannonNr
tag @s remove this_cannon