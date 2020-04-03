execute if entity @e[distance=..1,tag=target,limit=1] run tag @s[tag=!maybe_laser] add cancel
execute if entity @e[distance=..1,tag=target,limit=1] run tag @s[tag=maybe_laser] add preference_laser
execute if block ~ ~ ~ minecraft:gray_stained_glass if block ~ ~1 ~ minecraft:gray_stained_glass run tag @s add maybe_laser
execute unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:gray_stained_glass unless block ~ ~1 ~ minecraft:air unless block ~ ~1 ~ minecraft:gray_stained_glass run tag @s add preference_trap
execute if entity @s[tag=!cancel,tag=!preference_trap,tag=!preference_laser] positioned ^ ^ ^1 run function medabots_server:entities/medabot/cpu/preferences/trap/target
