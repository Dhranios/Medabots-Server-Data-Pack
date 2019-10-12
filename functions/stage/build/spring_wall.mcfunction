execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed

execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=91}] run function medabots_server:set_blocks/spring_wall/east/delay_10/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=91}] run function medabots_server:set_blocks/spring_wall/north/delay_10/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=91}] run function medabots_server:set_blocks/spring_wall/south/delay_10/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=91}] run function medabots_server:set_blocks/spring_wall/west/delay_10/power_1
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=92}] run function medabots_server:set_blocks/spring_wall/east/delay_9/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=92}] run function medabots_server:set_blocks/spring_wall/north/delay_9/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=92}] run function medabots_server:set_blocks/spring_wall/south/delay_9/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=92}] run function medabots_server:set_blocks/spring_wall/west/delay_9/power_1
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=93}] run function medabots_server:set_blocks/spring_wall/east/delay_8/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=93}] run function medabots_server:set_blocks/spring_wall/north/delay_8/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=93}] run function medabots_server:set_blocks/spring_wall/south/delay_8/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=93}] run function medabots_server:set_blocks/spring_wall/west/delay_8/power_1
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=94}] run function medabots_server:set_blocks/spring_wall/east/delay_7/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=94}] run function medabots_server:set_blocks/spring_wall/north/delay_7/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=94}] run function medabots_server:set_blocks/spring_wall/south/delay_7/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=94}] run function medabots_server:set_blocks/spring_wall/west/delay_7/power_1
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=95}] run function medabots_server:set_blocks/spring_wall/east/delay_6/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=95}] run function medabots_server:set_blocks/spring_wall/north/delay_6/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=95}] run function medabots_server:set_blocks/spring_wall/south/delay_6/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=95}] run function medabots_server:set_blocks/spring_wall/west/delay_6/power_1
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=96}] run function medabots_server:set_blocks/spring_wall/east/delay_5/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=96}] run function medabots_server:set_blocks/spring_wall/north/delay_5/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=96}] run function medabots_server:set_blocks/spring_wall/south/delay_5/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=96}] run function medabots_server:set_blocks/spring_wall/west/delay_5/power_1
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=97}] run function medabots_server:set_blocks/spring_wall/east/delay_4/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=97}] run function medabots_server:set_blocks/spring_wall/north/delay_4/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=97}] run function medabots_server:set_blocks/spring_wall/south/delay_4/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=97}] run function medabots_server:set_blocks/spring_wall/west/delay_4/power_1
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=98}] run function medabots_server:set_blocks/spring_wall/east/delay_3/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=98}] run function medabots_server:set_blocks/spring_wall/north/delay_3/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=98}] run function medabots_server:set_blocks/spring_wall/south/delay_3/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=98}] run function medabots_server:set_blocks/spring_wall/west/delay_3/power_1
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=99}] run function medabots_server:set_blocks/spring_wall/east/delay_2/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=99}] run function medabots_server:set_blocks/spring_wall/north/delay_2/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=99}] run function medabots_server:set_blocks/spring_wall/south/delay_2/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=99}] run function medabots_server:set_blocks/spring_wall/west/delay_2/power_1
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=100}] run function medabots_server:set_blocks/spring_wall/east/delay_1/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=100}] run function medabots_server:set_blocks/spring_wall/north/delay_1/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=100}] run function medabots_server:set_blocks/spring_wall/south/delay_1/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=100}] run function medabots_server:set_blocks/spring_wall/west/delay_1/power_1
tag @e[distance=..0.7,tag=spring_wall] add no_ticking