execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed

execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=37}] run function medabots_server:set_blocks/hammer_punch/disabled/east/delay_10
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=37}] run function medabots_server:set_blocks/hammer_punch/disabled/north/delay_10
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=37}] run function medabots_server:set_blocks/hammer_punch/disabled/south/delay_10
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=37}] run function medabots_server:set_blocks/hammer_punch/disabled/west/delay_10
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=38}] run function medabots_server:set_blocks/hammer_punch/disabled/east/delay_9
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=38}] run function medabots_server:set_blocks/hammer_punch/disabled/north/delay_9
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=38}] run function medabots_server:set_blocks/hammer_punch/disabled/south/delay_9
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=38}] run function medabots_server:set_blocks/hammer_punch/disabled/west/delay_9
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=39}] run function medabots_server:set_blocks/hammer_punch/disabled/east/delay_8
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=39}] run function medabots_server:set_blocks/hammer_punch/disabled/north/delay_8
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=39}] run function medabots_server:set_blocks/hammer_punch/disabled/south/delay_8
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=39}] run function medabots_server:set_blocks/hammer_punch/disabled/west/delay_8
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=40}] run function medabots_server:set_blocks/hammer_punch/disabled/east/delay_7
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=40}] run function medabots_server:set_blocks/hammer_punch/disabled/north/delay_7
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=40}] run function medabots_server:set_blocks/hammer_punch/disabled/south/delay_7
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=40}] run function medabots_server:set_blocks/hammer_punch/disabled/west/delay_7
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=41}] run function medabots_server:set_blocks/hammer_punch/disabled/east/delay_6
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=41}] run function medabots_server:set_blocks/hammer_punch/disabled/north/delay_6
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=41}] run function medabots_server:set_blocks/hammer_punch/disabled/south/delay_6
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=41}] run function medabots_server:set_blocks/hammer_punch/disabled/west/delay_6
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=42}] run function medabots_server:set_blocks/hammer_punch/disabled/east/delay_5
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=42}] run function medabots_server:set_blocks/hammer_punch/disabled/north/delay_5
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=42}] run function medabots_server:set_blocks/hammer_punch/disabled/south/delay_5
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=42}] run function medabots_server:set_blocks/hammer_punch/disabled/west/delay_5
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=43}] run function medabots_server:set_blocks/hammer_punch/disabled/east/delay_4
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=43}] run function medabots_server:set_blocks/hammer_punch/disabled/north/delay_4
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=43}] run function medabots_server:set_blocks/hammer_punch/disabled/south/delay_4
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=43}] run function medabots_server:set_blocks/hammer_punch/disabled/west/delay_4
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=44}] run function medabots_server:set_blocks/hammer_punch/disabled/east/delay_3
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=44}] run function medabots_server:set_blocks/hammer_punch/disabled/north/delay_3
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=44}] run function medabots_server:set_blocks/hammer_punch/disabled/south/delay_3
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=44}] run function medabots_server:set_blocks/hammer_punch/disabled/west/delay_3
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=45}] run function medabots_server:set_blocks/hammer_punch/disabled/east/delay_2
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=45}] run function medabots_server:set_blocks/hammer_punch/disabled/north/delay_2
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=45}] run function medabots_server:set_blocks/hammer_punch/disabled/south/delay_2
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=45}] run function medabots_server:set_blocks/hammer_punch/disabled/west/delay_2
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=46}] run function medabots_server:set_blocks/hammer_punch/disabled/east/delay_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=46}] run function medabots_server:set_blocks/hammer_punch/disabled/north/delay_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=46}] run function medabots_server:set_blocks/hammer_punch/disabled/south/delay_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=46}] run function medabots_server:set_blocks/hammer_punch/disabled/west/delay_1
tag @e[distance=..0.7,tag=hammer_punch] add no_ticking