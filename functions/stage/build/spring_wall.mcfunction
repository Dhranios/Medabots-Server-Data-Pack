execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed

execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=91}] run function medabots_server:set_blocks/spring_wall/disabled/east/delay_10
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=91}] run function medabots_server:set_blocks/spring_wall/disabled/north/delay_10
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=91}] run function medabots_server:set_blocks/spring_wall/disabled/south/delay_10
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=91}] run function medabots_server:set_blocks/spring_wall/disabled/west/delay_10
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=92}] run function medabots_server:set_blocks/spring_wall/disabled/east/delay_9
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=92}] run function medabots_server:set_blocks/spring_wall/disabled/north/delay_9
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=92}] run function medabots_server:set_blocks/spring_wall/disabled/south/delay_9
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=92}] run function medabots_server:set_blocks/spring_wall/disabled/west/delay_9
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=93}] run function medabots_server:set_blocks/spring_wall/disabled/east/delay_8
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=93}] run function medabots_server:set_blocks/spring_wall/disabled/north/delay_8
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=93}] run function medabots_server:set_blocks/spring_wall/disabled/south/delay_8
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=93}] run function medabots_server:set_blocks/spring_wall/disabled/west/delay_8
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=94}] run function medabots_server:set_blocks/spring_wall/disabled/east/delay_7
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=94}] run function medabots_server:set_blocks/spring_wall/disabled/north/delay_7
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=94}] run function medabots_server:set_blocks/spring_wall/disabled/south/delay_7
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=94}] run function medabots_server:set_blocks/spring_wall/disabled/west/delay_7
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=95}] run function medabots_server:set_blocks/spring_wall/disabled/east/delay_6
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=95}] run function medabots_server:set_blocks/spring_wall/disabled/north/delay_6
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=95}] run function medabots_server:set_blocks/spring_wall/disabled/south/delay_6
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=95}] run function medabots_server:set_blocks/spring_wall/disabled/west/delay_6
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=96}] run function medabots_server:set_blocks/spring_wall/disabled/east/delay_5
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=96}] run function medabots_server:set_blocks/spring_wall/disabled/north/delay_5
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=96}] run function medabots_server:set_blocks/spring_wall/disabled/south/delay_5
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=96}] run function medabots_server:set_blocks/spring_wall/disabled/west/delay_5
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=97}] run function medabots_server:set_blocks/spring_wall/disabled/east/delay_4
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=97}] run function medabots_server:set_blocks/spring_wall/disabled/north/delay_4
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=97}] run function medabots_server:set_blocks/spring_wall/disabled/south/delay_4
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=97}] run function medabots_server:set_blocks/spring_wall/disabled/west/delay_4
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=98}] run function medabots_server:set_blocks/spring_wall/disabled/east/delay_3
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=98}] run function medabots_server:set_blocks/spring_wall/disabled/north/delay_3
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=98}] run function medabots_server:set_blocks/spring_wall/disabled/south/delay_3
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=98}] run function medabots_server:set_blocks/spring_wall/disabled/west/delay_3
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=99}] run function medabots_server:set_blocks/spring_wall/disabled/east/delay_2
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=99}] run function medabots_server:set_blocks/spring_wall/disabled/north/delay_2
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=99}] run function medabots_server:set_blocks/spring_wall/disabled/south/delay_2
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=99}] run function medabots_server:set_blocks/spring_wall/disabled/west/delay_2
tag @e[distance=..0.7,tag=spring_wall] add no_ticking