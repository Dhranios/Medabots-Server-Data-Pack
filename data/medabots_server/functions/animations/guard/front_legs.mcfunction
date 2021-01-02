# Move with
execute rotated ~ 0 run teleport @s ^ ^-1.2 ^0.25 ~ 0

execute if entity @s[tag=!walking,tag=!attack,tag=!hurt] run function medabots_server:animations/guard/idle/front_legs
execute if entity @s[tag=walking] run function medabots_server:animations/guard/walking/front_legs
execute if entity @s[tag=hurt] run function medabots_server:animations/guard/hurt/front_legs
execute if entity @s[tag=attack] run function medabots_server:animations/guard/attack/front_legs