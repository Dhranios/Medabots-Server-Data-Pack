execute if entity @s[tag=!separated] run function medabots_server:animations/medabot/separate_chest

# Move with
execute at @e[tag=this_medabot,tag=source,limit=1] rotated ~ 0 run teleport @s ^ ^.39 ^ ~ ~