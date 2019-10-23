execute if block ~ ~ ~ minecraft:chest run tag @s add allowed

execute if entity @s[scores={StageBuild=5},tag=allowed] run function medabots_server:set_blocks/floor_switch/green
execute if entity @s[scores={StageBuild=6},tag=allowed] run function medabots_server:set_blocks/floor_switch/yellow/delay_30
execute if entity @s[scores={StageBuild=7..8},tag=allowed] run function medabots_server:set_blocks/floor_switch/blue
execute if entity @s[scores={StageBuild=8},tag=allowed] run tag @e[distance=..0.7] add negative
tag @e[distance=..0.7,tag=floor_switch] add no_ticking