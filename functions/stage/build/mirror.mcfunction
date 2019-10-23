execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed
execute if entity @s[tag=allowed,scores={StageBuild=22}] run function medabots_server:set_blocks/mirror/-45
execute if entity @s[tag=allowed,scores={StageBuild=23}] run function medabots_server:set_blocks/mirror/45
tag @e[distance=..0.7,tag=alarm] add no_ticking