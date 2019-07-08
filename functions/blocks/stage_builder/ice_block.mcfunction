# Spawn object
execute if entity @s[tag=!east,tag=!north,tag=!south,tag=!west] run function medabots_server:spawn_entities/ice_block
execute if entity @s[tag=east] run function medabots_server:spawn_entities/ice_block/east
execute if entity @s[tag=north] run function medabots_server:spawn_entities/ice_block/north
execute if entity @s[tag=south] run function medabots_server:spawn_entities/ice_block/south
execute if entity @s[tag=west] run function medabots_server:spawn_entities/ice_block/west