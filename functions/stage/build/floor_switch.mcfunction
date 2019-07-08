execute if block ~ ~ ~ minecraft:chest run tag @s add allowed

execute if entity @s[scores={StageBuild=21},tag=allowed] run function medabots_server:set_blocks/floor_switch/green
execute if entity @s[scores={StageBuild=22},tag=allowed] run function medabots_server:set_blocks/floor_switch/yellow/delay_1
execute if entity @s[scores={StageBuild=23},tag=allowed] run function medabots_server:set_blocks/floor_switch/yellow/delay_2
execute if entity @s[scores={StageBuild=24},tag=allowed] run function medabots_server:set_blocks/floor_switch/yellow/delay_5
execute if entity @s[scores={StageBuild=25},tag=allowed] run function medabots_server:set_blocks/floor_switch/yellow/delay_10
execute if entity @s[scores={StageBuild=26},tag=allowed] run function medabots_server:set_blocks/floor_switch/yellow/delay_15
execute if entity @s[scores={StageBuild=27},tag=allowed] run function medabots_server:set_blocks/floor_switch/yellow/delay_20
execute if entity @s[scores={StageBuild=28},tag=allowed] run function medabots_server:set_blocks/floor_switch/yellow/delay_30
execute if entity @s[scores={StageBuild=29},tag=allowed] run function medabots_server:set_blocks/floor_switch/yellow/delay_40
execute if entity @s[scores={StageBuild=30},tag=allowed] run function medabots_server:set_blocks/floor_switch/yellow/delay_60
execute if entity @s[scores={StageBuild=31},tag=allowed] run function medabots_server:set_blocks/floor_switch/yellow/delay_100
execute if entity @s[scores={StageBuild=32},tag=allowed] run function medabots_server:set_blocks/floor_switch/yellow/delay_120
execute if entity @s[scores={StageBuild=33..34},tag=allowed] run function medabots_server:set_blocks/floor_switch/blue
execute if entity @s[scores={StageBuild=34},tag=allowed] run tag @e[distance=..0.7] add negative
tag @e[distance=..0.7,tag=floor_switch] add no_ticking