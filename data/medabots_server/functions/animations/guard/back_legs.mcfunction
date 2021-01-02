# Move with
execute rotated ~ 0 run teleport @s ^ ^-1.2 ^-0.31 ~ 0

execute if entity @s[tag=!walking,tag=!attack,tag=!hurt] run function medabots_server:animations/guard/idle/back_legs
execute if entity @s[tag=walking] run function medabots_server:animations/guard/walking/back_legs
execute if entity @s[tag=hurt] run function medabots_server:animations/guard/hurt/back_legs
execute if entity @s[tag=attack] run function medabots_server:animations/guard/attack/back_legs