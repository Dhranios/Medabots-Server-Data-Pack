# Spawn object
execute if entity @s[tag=north,tag=!enabled] run function medabots_server:set_blocks/press_wall/disabled/north/range_10
execute if entity @s[tag=south,tag=!enabled] run function medabots_server:set_blocks/press_wall/disabled/south/range_10
execute if entity @s[tag=east,tag=!enabled] run function medabots_server:set_blocks/press_wall/disabled/east/range_10
execute if entity @s[tag=west,tag=!enabled] run function medabots_server:set_blocks/press_wall/disabled/west/range_10

execute if entity @s[tag=north,tag=enabled] run function medabots_server:set_blocks/press_wall/enabled/north/range_10
execute if entity @s[tag=south,tag=enabled] run function medabots_server:set_blocks/press_wall/enabled/south/range_10
execute if entity @s[tag=east,tag=enabled] run function medabots_server:set_blocks/press_wall/enabled/east/range_10
execute if entity @s[tag=west,tag=enabled] run function medabots_server:set_blocks/press_wall/enabled/west/range_10

# Give additional data
scoreboard players operation @e[distance=..0.7,tag=press_wall] Range = @s Range