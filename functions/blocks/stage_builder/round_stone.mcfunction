# Spawn object
execute if entity @s[tag=!east,tag=!north,tag=!south,tag=!west] run function medabots_server:spawn_entities/round_stone
execute if entity @s[tag=east] run function medabots_server:spawn_entities/round_stone/east
execute if entity @s[tag=north] run function medabots_server:spawn_entities/round_stone/north
execute if entity @s[tag=south] run function medabots_server:spawn_entities/round_stone/south
execute if entity @s[tag=west] run function medabots_server:spawn_entities/round_stone/west