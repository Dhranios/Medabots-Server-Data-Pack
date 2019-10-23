execute if entity @s[tag=bomb] run function medabots_server:spawn_entities/bomb/delay_5
execute if entity @s[tag=balloon_bomb] run function medabots_server:spawn_entities/balloon_bomb
execute if entity @s[tag=guard] run function medabots_server:spawn_entities/guard/medium
execute if entity @s[tag=jammy] run function medabots_server:set_blocks/jammy
execute if entity @s[tag=cannon,tag=detect,tag=rotating,tag=east,tag=delay_4] run function medabots_server:spawn_entities/cannon/search/east/delay_4
execute if entity @s[tag=cannon,tag=detect,tag=rotating,tag=north,tag=delay_4] run function medabots_server:spawn_entities/cannon/search/north/delay_4
execute if entity @s[tag=cannon,tag=detect,tag=rotating,tag=south,tag=delay_4] run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute if entity @s[tag=cannon,tag=detect,tag=rotating,tag=west,tag=delay_4] run function medabots_server:spawn_entities/cannon/search/west/delay_4
execute if entity @s[tag=cannon,tag=detect,tag=looking,tag=east,tag=delay_4] run function medabots_server:spawn_entities/cannon/tripwire/east/delay_4
execute if entity @s[tag=cannon,tag=detect,tag=looking,tag=north,tag=delay_4] run function medabots_server:spawn_entities/cannon/tripwire/north/delay_4
execute if entity @s[tag=cannon,tag=detect,tag=looking,tag=south,tag=delay_4] run function medabots_server:spawn_entities/cannon/tripwire/south/delay_4
execute if entity @s[tag=cannon,tag=detect,tag=looking,tag=west,tag=delay_4] run function medabots_server:spawn_entities/cannon/tripwire/west/delay_4
execute if entity @s[tag=cannon,tag=!detect,tag=rotating,tag=east,tag=delay_4] run function medabots_server:spawn_entities/cannon/swiffle/east/delay_4
execute if entity @s[tag=cannon,tag=!detect,tag=rotating,tag=north,tag=delay_4] run function medabots_server:spawn_entities/cannon/swiffle/north/delay_4
execute if entity @s[tag=cannon,tag=!detect,tag=rotating,tag=south,tag=delay_4] run function medabots_server:spawn_entities/cannon/swiffle/south/delay_4
execute if entity @s[tag=cannon,tag=!detect,tag=rotating,tag=west,tag=delay_4] run function medabots_server:spawn_entities/cannon/swiffle/west/delay_4
execute if entity @s[tag=cannon,tag=!detect,tag=looking,tag=east,tag=delay_4] run function medabots_server:spawn_entities/cannon/still/east/delay_4
execute if entity @s[tag=cannon,tag=!detect,tag=looking,tag=north,tag=delay_4] run function medabots_server:spawn_entities/cannon/still/north/delay_4
execute if entity @s[tag=cannon,tag=!detect,tag=looking,tag=south,tag=delay_4] run function medabots_server:spawn_entities/cannon/still/south/delay_4
execute if entity @s[tag=cannon,tag=!detect,tag=looking,tag=west,tag=delay_4] run function medabots_server:spawn_entities/cannon/still/west/delay_4
execute if entity @s[tag=ice_block] run function medabots_server:spawn_entities/ice_block
execute if entity @s[tag=round_stone] run function medabots_server:spawn_entities/round_stone
execute if entity @e[tag=dead,distance=..0.7,tag=bomb] run scoreboard players operation @e[tag=bomb,distance=..0.7,limit=1] DelayTime = @e[tag=dead,distance=..0.7,tag=action_floor,limit=1] DelayTime
execute if entity @e[tag=dead,distance=..0.7,tag=guard] run scoreboard players operation @e[tag=guard,distance=..0.7,limit=1] Speed = @e[tag=dead,distance=..0.7,tag=action_floor,limit=1] DelayTime
execute if entity @e[tag=dead,distance=..0.7,tag=cannon] run scoreboard players operation @e[tag=cannon,distance=..0.7,limit=1] DelayTime = @e[tag=dead,distance=..0.7,tag=action_floor,limit=1] DelayTime
execute if entity @e[tag=dead,distance=..0.7,tag=round_stone] run scoreboard players operation @e[tag=round_stone,distance=..0.7,limit=1] Moving = @e[tag=dead,distance=..0.7,tag=action_floor,limit=1] DelayTime
execute if entity @e[tag=dead,distance=..0.7,tag=ice_block] run scoreboard players operation @e[tag=ice_block,distance=..0.7,limit=1] Moving = @e[tag=dead,distance=..0.7,tag=action_floor,limit=1] DelayTime
tag @e[distance=..0.7,type=!minecraft:player,tag=!model_piece] add no_ticking