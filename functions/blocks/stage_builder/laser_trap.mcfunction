# Spawn object
execute if entity @s[tag=north,tag=!enabled] run function medabots_server:set_blocks/laser_trap/disabled/north/delay_10
execute if entity @s[tag=south,tag=!enabled] run function medabots_server:set_blocks/laser_trap/disabled/south/delay_10
execute if entity @s[tag=east,tag=!enabled] run function medabots_server:set_blocks/laser_trap/disabled/east/delay_10
execute if entity @s[tag=west,tag=!enabled] run function medabots_server:set_blocks/laser_trap/disabled/west/delay_10

execute if entity @s[tag=north,tag=enabled] run function medabots_server:set_blocks/laser_trap/enabled/north/delay_10
execute if entity @s[tag=south,tag=enabled] run function medabots_server:set_blocks/laser_trap/enabled/south/delay_10
execute if entity @s[tag=east,tag=enabled] run function medabots_server:set_blocks/laser_trap/enabled/east/delay_10
execute if entity @s[tag=west,tag=enabled] run function medabots_server:set_blocks/laser_trap/enabled/west/delay_10