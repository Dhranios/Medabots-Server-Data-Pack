execute at @s[tag=!strong,tag=can_hit] positioned ~ ~1.7 ~ run effect give @e[distance=..0.7,type=!#medabots_server:undead] minecraft:instant_damage 1 1 true
execute at @s[tag=!strong,tag=can_hit] positioned ~ ~1.7 ~ run effect give @e[distance=..0.7,type=#medabots_server:undead] minecraft:instant_health 1 1 true
execute at @s[tag=strong,tag=can_hit] positioned ~ ~1.7 ~ run effect give @e[distance=..0.7,type=!#medabots_server:undead] minecraft:instant_damage 1 2 true
execute at @s[tag=strong,tag=can_hit] positioned ~ ~1.7 ~ run effect give @e[distance=..0.7,type=#medabots_server:undead] minecraft:instant_health 1 2 true
execute at @s[tag=!strong,tag=can_hit] positioned ~ ~0.7 ~ run effect give @e[distance=..0.7,type=!#medabots_server:undead] minecraft:instant_damage 1 1 true
execute at @s[tag=!strong,tag=can_hit] positioned ~ ~0.7 ~ run effect give @e[distance=..0.7,type=#medabots_server:undead] minecraft:instant_health 1 1 true
execute at @s[tag=strong,tag=can_hit] positioned ~ ~0.7 ~ run effect give @e[distance=..0.7,type=!#medabots_server:undead] minecraft:instant_damage 1 2 true
execute at @s[tag=strong,tag=can_hit] positioned ~ ~0.7 ~ run effect give @e[distance=..0.7,type=#medabots_server:undead] minecraft:instant_health 1 2 true
tag @s[tag=can_hit] add dead
tag @s[tag=!can_hit] add continue
tag @s[tag=!can_hit] remove hit