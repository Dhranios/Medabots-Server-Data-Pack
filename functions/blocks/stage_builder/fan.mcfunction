# Spawn object
execute if entity @s[tag=north] run function medabots_server:set_blocks/fan/off/north/range_10
execute if entity @s[tag=south] run function medabots_server:set_blocks/fan/off/south/range_10
execute if entity @s[tag=east] run function medabots_server:set_blocks/fan/off/east/range_10
execute if entity @s[tag=west] run function medabots_server:set_blocks/fan/off/west/range_10

# Give additional data
scoreboard players operation @e[distance=..0.7,tag=fan] Moving = @s Moving
scoreboard players operation @e[distance=..0.7,tag=fan] Range = @s Range