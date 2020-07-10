execute at @s run fill ^ ^ ^0.49 ^ ^3 ^0.49 minecraft:air replace minecraft:black_stained_glass
execute at @s run teleport @s ^ ^ ^0.7
execute unless entity @s[distance=..0.7] run function medabots_server:blocks/press_wall/retract_instantly