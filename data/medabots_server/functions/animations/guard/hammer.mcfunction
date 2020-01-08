# Move with
execute at @e[type=minecraft:creeper,tag=this_guard,limit=1] rotated ~ 0 run teleport @s ^ ^-1.01 ^

execute if entity @e[type=minecraft:creeper,tag=this_guard,tag=attack,limit=1] run function medabots_server:animations/guard/attack
execute if entity @e[type=minecraft:creeper,tag=this_guard,tag=hurt,limit=1] run function medabots_server:animations/guard/hurt