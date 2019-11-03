# Spawn object
execute if entity @s[tag=jammy] run function medabots_server:set_blocks/pot/jammy
execute if entity @s[tag=balloon_bomb] run function medabots_server:set_blocks/pot/balloon_bomb
execute if entity @s[tag=bomb] run function medabots_server:set_blocks/pot/bomb/delay_5
execute if entity @s[tag=cannon,tag=detect,tag=rotating,tag=east] run function medabots_server:set_blocks/pot/cannon/search/east/delay_4
execute if entity @s[tag=cannon,tag=detect,tag=rotating,tag=north] run function medabots_server:set_blocks/pot/cannon/search/north/delay_4
execute if entity @s[tag=cannon,tag=detect,tag=rotating,tag=south] run function medabots_server:set_blocks/pot/cannon/search/south/delay_4
execute if entity @s[tag=cannon,tag=detect,tag=rotating,tag=west] run function medabots_server:set_blocks/pot/cannon/search/west/delay_4
execute if entity @s[tag=cannon,tag=detect,tag=looking,tag=east] run function medabots_server:set_blocks/pot/cannon/tripwire/east/delay_4
execute if entity @s[tag=cannon,tag=detect,tag=looking,tag=north] run function medabots_server:set_blocks/pot/cannon/tripwire/north/delay_4
execute if entity @s[tag=cannon,tag=detect,tag=looking,tag=south] run function medabots_server:set_blocks/pot/cannon/tripwire/south/delay_4
execute if entity @s[tag=cannon,tag=detect,tag=looking,tag=west] run function medabots_server:set_blocks/pot/cannon/tripwire/west/delay_4
execute if entity @s[tag=cannon,tag=!detect,tag=rotating,tag=east] run function medabots_server:set_blocks/pot/cannon/swiffle/east/delay_4
execute if entity @s[tag=cannon,tag=!detect,tag=rotating,tag=north] run function medabots_server:set_blocks/pot/cannon/swiffle/north/delay_4
execute if entity @s[tag=cannon,tag=!detect,tag=rotating,tag=south] run function medabots_server:set_blocks/pot/cannon/swiffle/south/delay_4
execute if entity @s[tag=cannon,tag=!detect,tag=rotating,tag=west] run function medabots_server:set_blocks/pot/cannon/swiffle/west/delay_4
execute if entity @s[tag=cannon,tag=!detect,tag=looking,tag=east] run function medabots_server:set_blocks/pot/cannon/still/east/delay_4
execute if entity @s[tag=cannon,tag=!detect,tag=looking,tag=north] run function medabots_server:set_blocks/pot/cannon/still/north/delay_4
execute if entity @s[tag=cannon,tag=!detect,tag=looking,tag=south] run function medabots_server:set_blocks/pot/cannon/still/south/delay_4
execute if entity @s[tag=cannon,tag=!detect,tag=looking,tag=west] run function medabots_server:set_blocks/pot/cannon/still/west/delay_4
execute if entity @s[tag=guard] run function medabots_server:set_blocks/pot/guard/medium
execute if entity @s[tag=!jammy,tag=!balloon_bomb,tag=!bomb,tag=!cannon,tag=!guard] run function medabots_server:set_blocks/pot

# Give additional data
scoreboard players operation @e[distance=..0.7,tag=pot] DelayTime = @s DelayTime
