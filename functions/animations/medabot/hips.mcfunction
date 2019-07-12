# Move with
execute if entity @a[tag=sneak_pos,tag=this_medabot,limit=1] run tag @s add sneak_pos
execute rotated ~ 0 run teleport @s[tag=!sneak_pos] ^ ^-.75 ^-.25
execute rotated ~ 0 run teleport @s[tag=sneak_pos] ^ ^-.80 ^-.25
execute store result entity @s Rotation[0] float 0.01 run data get entity @e[tag=this_medabot,limit=1] Rotation[0] 100
tag @s[tag=sneak_pos] remove sneak_pos