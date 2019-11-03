# Spawn object
execute if entity @s[tag=detect,tag=rotating,tag=east] run function medabots_server:spawn_entities/cannon/search/east/delay_1
execute if entity @s[tag=detect,tag=rotating,tag=north] run function medabots_server:spawn_entities/cannon/search/north/delay_1
execute if entity @s[tag=detect,tag=rotating,tag=south] run function medabots_server:spawn_entities/cannon/search/south/delay_1
execute if entity @s[tag=detect,tag=rotating,tag=west] run function medabots_server:spawn_entities/cannon/search/west/delay_1
execute if entity @s[tag=detect,tag=looking,tag=east] run function medabots_server:spawn_entities/cannon/tripwire/east/delay_1
execute if entity @s[tag=detect,tag=looking,tag=north] run function medabots_server:spawn_entities/cannon/tripwire/north/delay_1
execute if entity @s[tag=detect,tag=looking,tag=south] run function medabots_server:spawn_entities/cannon/tripwire/south/delay_1
execute if entity @s[tag=detect,tag=looking,tag=west] run function medabots_server:spawn_entities/cannon/tripwire/west/delay_1
execute if entity @s[tag=!detect,tag=rotating,tag=east] run function medabots_server:spawn_entities/cannon/swiffle/east/delay_1
execute if entity @s[tag=!detect,tag=rotating,tag=north] run function medabots_server:spawn_entities/cannon/swiffle/north/delay_1
execute if entity @s[tag=!detect,tag=rotating,tag=south] run function medabots_server:spawn_entities/cannon/swiffle/south/delay_1
execute if entity @s[tag=!detect,tag=rotating,tag=west] run function medabots_server:spawn_entities/cannon/swiffle/west/delay_1
execute if entity @s[tag=!detect,tag=looking,tag=east] run function medabots_server:spawn_entities/cannon/still/east/delay_1
execute if entity @s[tag=!detect,tag=looking,tag=north] run function medabots_server:spawn_entities/cannon/still/north/delay_1
execute if entity @s[tag=!detect,tag=looking,tag=south] run function medabots_server:spawn_entities/cannon/still/south/delay_1
execute if entity @s[tag=!detect,tag=looking,tag=west] run function medabots_server:spawn_entities/cannon/still/west/delay_1

# Give additional data
execute if entity @s[tag=mission_entity] run tag @e[distance=..0.7,tag=cannon] add mission_entity
scoreboard players operation @e[distance=..0.7,tag=cannon] DelayTime = @s DelayTime