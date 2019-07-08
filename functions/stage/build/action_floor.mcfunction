tag @s remove allowed
execute if entity @e[distance=..0.7,tag=balloon_bomb,tag=!pot,tag=!action_floor] run tag @s add allowed
execute if entity @e[distance=..0.7,tag=bomb,tag=!pot,tag=!action_floor] run tag @s add allowed
execute if entity @e[distance=..0.7,tag=cannon,tag=!pot,tag=!action_floor] run tag @s add allowed
execute if entity @e[distance=..0.7,tag=guard,tag=!pot,tag=!action_floor] run tag @s add allowed
execute if entity @e[distance=..0.7,tag=ice_block,tag=!action_floor] run tag @s add allowed
execute if entity @e[distance=..0.7,tag=round_stone,tag=!action_floor] run tag @s add allowed
execute positioned ~ ~-0.6 ~ if entity @e[distance=..0.7,tag=raft] run tag @s remove allowed
execute if entity @s[tag=allowed] run tag @e[distance=..0.7,tag=bridge] add dead

execute if entity @e[distance=..0.7,tag=balloon_bomb,tag=!pot,tag=!action_floor] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.action_floor.balloon_bomb"}
execute if entity @e[distance=..0.7,tag=bomb,tag=!pot,tag=!action_floor] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.action_floor.bomb"}
execute if entity @e[distance=..0.7,tag=cannon,tag=!pot,tag=!action_floor] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.action_floor.cannon"}
execute if entity @e[distance=..0.7,tag=guard,tag=!pot,tag=!action_floor] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.action_floor.guard"}
execute if entity @e[distance=..0.7,tag=ice_block,tag=!action_floor] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.action_floor.ice_block"}
execute if entity @e[distance=..0.7,tag=round_stone,tag=!action_floor] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.action_floor.round_stone"}
execute run tag @e[distance=..0.7,tag=balloon_bomb,tag=!pot,tag=!action_floor] add dead
execute run tag @e[distance=..0.7,tag=bomb,tag=!pot,tag=!action_floor] add dead
execute run tag @e[distance=..0.7,tag=cannon,tag=!pot,tag=!action_floor] add dead
execute run tag @e[distance=..0.7,tag=guard,tag=!pot,tag=!action_floor] add dead
execute run tag @e[distance=..0.7,tag=ice_block,tag=!action_floor] add dead
execute run tag @e[distance=..0.7,tag=round_stone,tag=!action_floor] add dead
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=balloon_bomb] run function medabots_server:set_blocks/action_floor/disabled/balloon_bomb
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,tag=delay_0] run function medabots_server:set_blocks/action_floor/disabled/bomb/delay_0
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,tag=delay_5] run function medabots_server:set_blocks/action_floor/disabled/bomb/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,tag=delay_10] run function medabots_server:set_blocks/action_floor/disabled/bomb/delay_10
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,tag=delay_30] run function medabots_server:set_blocks/action_floor/disabled/bomb/delay_30
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,tag=delay_60] run function medabots_server:set_blocks/action_floor/disabled/bomb/delay_60
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,tag=delay_90] run function medabots_server:set_blocks/action_floor/disabled/bomb/delay_90
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,tag=delay_120] run function medabots_server:set_blocks/action_floor/disabled/bomb/delay_120
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=guard,tag=slow] run function medabots_server:set_blocks/action_floor/disabled/guard/slow
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=guard,tag=!slow,tag=!fast] run function medabots_server:set_blocks/action_floor/disabled/guard/normal
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=guard,tag=fast] run function medabots_server:set_blocks/action_floor/disabled/guard/fast
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,tag=delay_1] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/rotating/east/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,tag=delay_2] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/rotating/east/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,tag=delay_3] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/rotating/east/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,tag=delay_4] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/rotating/east/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,tag=delay_1] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/rotating/north/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,tag=delay_2] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/rotating/north/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,tag=delay_3] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/rotating/north/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,tag=delay_4] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/rotating/north/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,tag=delay_1] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/rotating/south/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,tag=delay_2] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/rotating/south/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,tag=delay_3] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/rotating/south/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,tag=delay_4] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/rotating/south/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,tag=delay_1] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/rotating/west/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,tag=delay_2] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/rotating/west/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,tag=delay_3] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/rotating/west/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,tag=delay_4] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/rotating/west/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,tag=delay_1] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/looking/east/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,tag=delay_2] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/looking/east/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,tag=delay_3] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/looking/east/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,tag=delay_4] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/looking/east/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,tag=delay_1] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/looking/north/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,tag=delay_2] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/looking/north/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,tag=delay_3] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/looking/north/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,tag=delay_4] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/looking/north/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,tag=delay_1] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/looking/south/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,tag=delay_2] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/looking/south/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,tag=delay_3] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/looking/south/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,tag=delay_4] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/looking/south/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,tag=delay_1] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/looking/west/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,tag=delay_2] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/looking/west/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,tag=delay_3] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/looking/west/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,tag=delay_4] run function medabots_server:set_blocks/action_floor/disabled/cannon/detect/looking/west/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,tag=delay_1] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/rotating/east/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,tag=delay_2] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/rotating/east/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,tag=delay_3] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/rotating/east/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,tag=delay_4] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/rotating/east/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,tag=delay_1] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/rotating/north/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,tag=delay_2] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/rotating/north/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,tag=delay_3] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/rotating/north/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,tag=delay_4] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/rotating/north/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,tag=delay_1] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/rotating/south/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,tag=delay_2] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/rotating/south/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,tag=delay_3] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/rotating/south/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,tag=delay_4] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/rotating/south/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,tag=delay_1] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/rotating/west/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,tag=delay_2] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/rotating/west/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,tag=delay_3] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/rotating/west/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,tag=delay_4] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/rotating/west/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,tag=delay_1] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/looking/east/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,tag=delay_2] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/looking/east/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,tag=delay_3] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/looking/east/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,tag=delay_4] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/looking/east/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,tag=delay_1] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/looking/north/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,tag=delay_2] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/looking/north/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,tag=delay_3] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/looking/north/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,tag=delay_4] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/looking/north/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,tag=delay_1] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/looking/south/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,tag=delay_2] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/looking/south/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,tag=delay_3] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/looking/south/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,tag=delay_4] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/looking/south/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,tag=delay_1] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/looking/west/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,tag=delay_2] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/looking/west/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,tag=delay_3] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/looking/west/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,tag=delay_4] run function medabots_server:set_blocks/action_floor/disabled/cannon/no_detect/looking/west/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=ice_block,tag=!east,tag=!north,tag=!south,tag=!west] run function medabots_server:set_blocks/action_floor/disabled/ice_block
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=ice_block,tag=east] run function medabots_server:set_blocks/action_floor/disabled/ice_block/east
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=ice_block,tag=north] run function medabots_server:set_blocks/action_floor/disabled/ice_block/north
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=ice_block,tag=south] run function medabots_server:set_blocks/action_floor/disabled/ice_block/south
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=ice_block,tag=west] run function medabots_server:set_blocks/action_floor/disabled/ice_block/west
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=round_stone,tag=!east,tag=!north,tag=!south,tag=!west] run function medabots_server:set_blocks/action_floor/disabled/round_stone
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=round_stone,tag=east] run function medabots_server:set_blocks/action_floor/disabled/round_stone/east
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=round_stone,tag=north] run function medabots_server:set_blocks/action_floor/disabled/round_stone/north
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=round_stone,tag=south] run function medabots_server:set_blocks/action_floor/disabled/round_stone/south
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=round_stone,tag=west] run function medabots_server:set_blocks/action_floor/disabled/round_stone/west
tag @e[distance=..0.7,tag=action_floor] add no_ticking