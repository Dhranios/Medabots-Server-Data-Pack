execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed

execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=48}] run function medabots_server:set_blocks/press_wall/east/range_10
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=48}] run function medabots_server:set_blocks/press_wall/north/range_10
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=48}] run function medabots_server:set_blocks/press_wall/south/range_10
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=48}] run function medabots_server:set_blocks/press_wall/west/range_10
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=49}] run function medabots_server:set_blocks/press_wall/east/range_9
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=49}] run function medabots_server:set_blocks/press_wall/north/range_9
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=49}] run function medabots_server:set_blocks/press_wall/south/range_9
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=49}] run function medabots_server:set_blocks/press_wall/west/range_9
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=50}] run function medabots_server:set_blocks/press_wall/east/range_8
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=50}] run function medabots_server:set_blocks/press_wall/north/range_8
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=50}] run function medabots_server:set_blocks/press_wall/south/range_8
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=50}] run function medabots_server:set_blocks/press_wall/west/range_8
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=51}] run function medabots_server:set_blocks/press_wall/east/range_7
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=51}] run function medabots_server:set_blocks/press_wall/north/range_7
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=51}] run function medabots_server:set_blocks/press_wall/south/range_7
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=51}] run function medabots_server:set_blocks/press_wall/west/range_7
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=52}] run function medabots_server:set_blocks/press_wall/east/range_6
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=52}] run function medabots_server:set_blocks/press_wall/north/range_6
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=52}] run function medabots_server:set_blocks/press_wall/south/range_6
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=52}] run function medabots_server:set_blocks/press_wall/west/range_6
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=53}] run function medabots_server:set_blocks/press_wall/east/range_5
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=53}] run function medabots_server:set_blocks/press_wall/north/range_5
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=53}] run function medabots_server:set_blocks/press_wall/south/range_5
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=53}] run function medabots_server:set_blocks/press_wall/west/range_5
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=54}] run function medabots_server:set_blocks/press_wall/east/range_4
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=54}] run function medabots_server:set_blocks/press_wall/north/range_4
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=54}] run function medabots_server:set_blocks/press_wall/south/range_4
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=54}] run function medabots_server:set_blocks/press_wall/west/range_4
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=55}] run function medabots_server:set_blocks/press_wall/east/range_3
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=55}] run function medabots_server:set_blocks/press_wall/north/range_3
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=55}] run function medabots_server:set_blocks/press_wall/south/range_3
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=55}] run function medabots_server:set_blocks/press_wall/west/range_3
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=56}] run function medabots_server:set_blocks/press_wall/east/range_2
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=56}] run function medabots_server:set_blocks/press_wall/north/range_2
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=56}] run function medabots_server:set_blocks/press_wall/south/range_2
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=56}] run function medabots_server:set_blocks/press_wall/west/range_2
tag @e[distance=..0.7,tag=press_wall] add no_ticking