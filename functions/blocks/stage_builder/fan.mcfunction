# Spawn object
execute if entity @s[tag=north] run function medabots_server:set_blocks/fan/north/off/range_10
execute if entity @s[tag=south] run function medabots_server:set_blocks/fan/south/off/range_10
execute if entity @s[tag=east] run function medabots_server:set_blocks/fan/east/off/range_10
execute if entity @s[tag=west] run function medabots_server:set_blocks/fan/west/off/range_10

# Give additional data
scoreboard players operation @e[distance=..0.7,tag=fan] Moving = @s Moving
scoreboard players operation @e[distance=..0.7,tag=fan] Range = @s Range