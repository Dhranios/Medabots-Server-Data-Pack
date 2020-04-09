# Move with
execute at @e[tag=this_medabot,tag=hips,limit=1] rotated ~ 0 run teleport @s ^ ^1 ^
execute if entity @s[tag=!was_selected] store result entity @s Rotation[0] float 0.01 run data get entity @e[tag=this_medabot,tag=hips,limit=1] Rotation[0] 100