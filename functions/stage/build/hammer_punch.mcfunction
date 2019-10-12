execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed

execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=37}] run function medabots_server:set_blocks/hammer_punch/east/delay_10/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=37}] run function medabots_server:set_blocks/hammer_punch/north/delay_10/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=37}] run function medabots_server:set_blocks/hammer_punch/south/delay_10/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=37}] run function medabots_server:set_blocks/hammer_punch/west/delay_10/power_1
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=38}] run function medabots_server:set_blocks/hammer_punch/east/delay_9/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=38}] run function medabots_server:set_blocks/hammer_punch/north/delay_9/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=38}] run function medabots_server:set_blocks/hammer_punch/south/delay_9/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=38}] run function medabots_server:set_blocks/hammer_punch/west/delay_9/power_1
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=39}] run function medabots_server:set_blocks/hammer_punch/east/delay_8/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=39}] run function medabots_server:set_blocks/hammer_punch/north/delay_8/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=39}] run function medabots_server:set_blocks/hammer_punch/south/delay_8/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=39}] run function medabots_server:set_blocks/hammer_punch/west/delay_8/power_1
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=40}] run function medabots_server:set_blocks/hammer_punch/east/delay_7/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=40}] run function medabots_server:set_blocks/hammer_punch/north/delay_7/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=40}] run function medabots_server:set_blocks/hammer_punch/south/delay_7/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=40}] run function medabots_server:set_blocks/hammer_punch/west/delay_7/power_1
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=41}] run function medabots_server:set_blocks/hammer_punch/east/delay_6/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=41}] run function medabots_server:set_blocks/hammer_punch/north/delay_6/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=41}] run function medabots_server:set_blocks/hammer_punch/south/delay_6/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=41}] run function medabots_server:set_blocks/hammer_punch/west/delay_6/power_1
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=42}] run function medabots_server:set_blocks/hammer_punch/east/delay_5/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=42}] run function medabots_server:set_blocks/hammer_punch/north/delay_5/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=42}] run function medabots_server:set_blocks/hammer_punch/south/delay_5/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=42}] run function medabots_server:set_blocks/hammer_punch/west/delay_5/power_1
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=43}] run function medabots_server:set_blocks/hammer_punch/east/delay_4/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=43}] run function medabots_server:set_blocks/hammer_punch/north/delay_4/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=43}] run function medabots_server:set_blocks/hammer_punch/south/delay_4/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=43}] run function medabots_server:set_blocks/hammer_punch/west/delay_4/power_1
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=44}] run function medabots_server:set_blocks/hammer_punch/east/delay_3/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=44}] run function medabots_server:set_blocks/hammer_punch/north/delay_3/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=44}] run function medabots_server:set_blocks/hammer_punch/south/delay_3/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=44}] run function medabots_server:set_blocks/hammer_punch/west/delay_3/power_1
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=45}] run function medabots_server:set_blocks/hammer_punch/east/delay_2/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=45}] run function medabots_server:set_blocks/hammer_punch/north/delay_2/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=45}] run function medabots_server:set_blocks/hammer_punch/south/delay_2/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=45}] run function medabots_server:set_blocks/hammer_punch/west/delay_2/power_1
execute if entity @s[y_rotation=45..135,tag=allowed,scores={StageBuild=46}] run function medabots_server:set_blocks/hammer_punch/east/delay_1/power_1
execute if entity @s[y_rotation=-45..45,tag=allowed,scores={StageBuild=46}] run function medabots_server:set_blocks/hammer_punch/north/delay_1/power_1
execute if entity @s[y_rotation=135..-135,tag=allowed,scores={StageBuild=46}] run function medabots_server:set_blocks/hammer_punch/south/delay_1/power_1
execute if entity @s[y_rotation=-135..-45,tag=allowed,scores={StageBuild=46}] run function medabots_server:set_blocks/hammer_punch/west/delay_1/power_1
tag @e[distance=..0.7,tag=hammer_punch] add no_ticking