# Move with
execute rotated ~ 0 run teleport @s ^ ^-1.01 ^ ~ 0

execute if entity @s[tag=!walking,tag=!attack,tag=!hurt] run function medabots_server:animations/guard/idle/hammer
execute if entity @s[tag=walking] run function medabots_server:animations/guard/walking/hammer
execute if entity @s[tag=attack] run function medabots_server:animations/guard/attack/hammer
execute if entity @s[tag=attack] run function medabots_server:animations/guard/attack/hammer
execute if entity @s[tag=hurt] run function medabots_server:animations/guard/hurt/hammer