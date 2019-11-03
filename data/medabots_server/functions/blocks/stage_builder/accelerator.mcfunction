# Spawn object
execute if entity @s[tag=north] run function medabots_server:set_blocks/accelerator/north
execute if entity @s[tag=south] run function medabots_server:set_blocks/accelerator/south
execute if entity @s[tag=east] run function medabots_server:set_blocks/accelerator/east
execute if entity @s[tag=west] run function medabots_server:set_blocks/accelerator/west