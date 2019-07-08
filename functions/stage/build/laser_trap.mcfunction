execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed

execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=101}] run function medabots_server:set_blocks/laser_trap/disabled/east/delay_10
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=101}] run function medabots_server:set_blocks/laser_trap/disabled/north/delay_10
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=101}] run function medabots_server:set_blocks/laser_trap/disabled/south/delay_10
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=101}] run function medabots_server:set_blocks/laser_trap/disabled/west/delay_10
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=102}] run function medabots_server:set_blocks/laser_trap/disabled/east/delay_9
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=102}] run function medabots_server:set_blocks/laser_trap/disabled/north/delay_9
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=102}] run function medabots_server:set_blocks/laser_trap/disabled/south/delay_9
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=102}] run function medabots_server:set_blocks/laser_trap/disabled/west/delay_9
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=103}] run function medabots_server:set_blocks/laser_trap/disabled/east/delay_8
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=103}] run function medabots_server:set_blocks/laser_trap/disabled/north/delay_8
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=103}] run function medabots_server:set_blocks/laser_trap/disabled/south/delay_8
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=103}] run function medabots_server:set_blocks/laser_trap/disabled/west/delay_8
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=104}] run function medabots_server:set_blocks/laser_trap/disabled/east/delay_7
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=104}] run function medabots_server:set_blocks/laser_trap/disabled/north/delay_7
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=104}] run function medabots_server:set_blocks/laser_trap/disabled/south/delay_7
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=104}] run function medabots_server:set_blocks/laser_trap/disabled/west/delay_7
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=105}] run function medabots_server:set_blocks/laser_trap/disabled/east/delay_6
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=105}] run function medabots_server:set_blocks/laser_trap/disabled/north/delay_6
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=105}] run function medabots_server:set_blocks/laser_trap/disabled/south/delay_6
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=105}] run function medabots_server:set_blocks/laser_trap/disabled/west/delay_6
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=106}] run function medabots_server:set_blocks/laser_trap/disabled/east/delay_5
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=106}] run function medabots_server:set_blocks/laser_trap/disabled/north/delay_5
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=106}] run function medabots_server:set_blocks/laser_trap/disabled/south/delay_5
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=106}] run function medabots_server:set_blocks/laser_trap/disabled/west/delay_5
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=107}] run function medabots_server:set_blocks/laser_trap/disabled/east/delay_4
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=107}] run function medabots_server:set_blocks/laser_trap/disabled/north/delay_4
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=107}] run function medabots_server:set_blocks/laser_trap/disabled/south/delay_4
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=107}] run function medabots_server:set_blocks/laser_trap/disabled/west/delay_4
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=108}] run function medabots_server:set_blocks/laser_trap/disabled/east/delay_3
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=108}] run function medabots_server:set_blocks/laser_trap/disabled/north/delay_3
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=108}] run function medabots_server:set_blocks/laser_trap/disabled/south/delay_3
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=108}] run function medabots_server:set_blocks/laser_trap/disabled/west/delay_3
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=109}] run function medabots_server:set_blocks/laser_trap/disabled/east/delay_2
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=109}] run function medabots_server:set_blocks/laser_trap/disabled/north/delay_2
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=109}] run function medabots_server:set_blocks/laser_trap/disabled/south/delay_2
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=109}] run function medabots_server:set_blocks/laser_trap/disabled/west/delay_2
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=110}] run function medabots_server:set_blocks/laser_trap/disabled/east/delay_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=110}] run function medabots_server:set_blocks/laser_trap/disabled/north/delay_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=110}] run function medabots_server:set_blocks/laser_trap/disabled/south/delay_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=110}] run function medabots_server:set_blocks/laser_trap/disabled/west/delay_1
tag @e[distance=..0.7,tag=laser_trap] add no_ticking