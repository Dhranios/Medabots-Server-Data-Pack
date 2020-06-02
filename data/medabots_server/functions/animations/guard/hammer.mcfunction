# Move with
execute rotated ~ 0 run teleport @s ^ ^-1.01 ^ ~ 0

execute if entity @s[tag=attack] run function medabots_server:animations/guard/attack
execute if entity @s[tag=hurt] run function medabots_server:animations/guard/hurt