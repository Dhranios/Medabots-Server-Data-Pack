# Move with
execute if entity @a[tag=sneak_pos,tag=this_medabot,limit=1] run tag @s add sneak_pos
execute at @e[tag=this_medabot,tag=chest,limit=1] rotated ~ 0 run teleport @s[tag=!sneak_pos] ^ ^-.37 ^-.25
execute at @e[tag=this_medabot,tag=chest,limit=1] rotated ~ 0 run teleport @s[tag=sneak_pos] ^ ^-.32 ^-.25
execute store result entity @s Rotation[0] float 0.01 run data get entity @e[tag=this_medabot,tag=chest,limit=1] Rotation[0] 100
tag @s[tag=sneak_pos] remove sneak_pos