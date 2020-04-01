execute if entity @s[tag=!separated] run function medabots_server:animations/medabot/separate_chest

# Move with
execute at @a[tag=this_medabot,limit=1] rotated ~ 0 positioned ^ ^ ^2 facing entity @a[tag=this_medabot,limit=1] feet rotated ~ 0 run teleport @s ^ ^-.28 ^ ~ ~