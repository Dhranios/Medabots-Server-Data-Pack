# Spawn object
execute if entity @s[tag=north,tag=!enabled] run function medabots_server:set_blocks/spring_wall/disabled/north/delay_10
execute if entity @s[tag=south,tag=!enabled] run function medabots_server:set_blocks/spring_wall/disabled/south/delay_10
execute if entity @s[tag=east,tag=!enabled] run function medabots_server:set_blocks/spring_wall/disabled/east/delay_10
execute if entity @s[tag=west,tag=!enabled] run function medabots_server:set_blocks/spring_wall/disabled/west/delay_10

execute if entity @s[tag=north,tag=enabled] run function medabots_server:set_blocks/spring_wall/enabled/north/delay_10
execute if entity @s[tag=south,tag=enabled] run function medabots_server:set_blocks/spring_wall/enabled/south/delay_10
execute if entity @s[tag=east,tag=enabled] run function medabots_server:set_blocks/spring_wall/enabled/east/delay_10
execute if entity @s[tag=west,tag=enabled] run function medabots_server:set_blocks/spring_wall/enabled/west/delay_10