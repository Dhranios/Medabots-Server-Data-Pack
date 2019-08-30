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
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=balloon_bomb] run function medabots_server:set_blocks/action_floor/balloon_bomb
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,tag=delay_0] run function medabots_server:set_blocks/action_floor/bomb/delay_0
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,tag=delay_5] run function medabots_server:set_blocks/action_floor/bomb/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,tag=delay_10] run function medabots_server:set_blocks/action_floor/bomb/delay_10
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,tag=delay_30] run function medabots_server:set_blocks/action_floor/bomb/delay_30
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,tag=delay_60] run function medabots_server:set_blocks/action_floor/bomb/delay_60
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,tag=delay_90] run function medabots_server:set_blocks/action_floor/bomb/delay_90
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,tag=delay_120] run function medabots_server:set_blocks/action_floor/bomb/delay_120
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=guard,tag=slow] run function medabots_server:set_blocks/action_floor/guard/slow
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=guard,tag=!slow,tag=!fast] run function medabots_server:set_blocks/action_floor/guard/medium
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=guard,tag=fast] run function medabots_server:set_blocks/action_floor/guard/fast
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,tag=delay_1] run function medabots_server:set_blocks/action_floor/cannon/search/east/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,tag=delay_2] run function medabots_server:set_blocks/action_floor/cannon/search/east/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,tag=delay_3] run function medabots_server:set_blocks/action_floor/cannon/search/east/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,tag=delay_4] run function medabots_server:set_blocks/action_floor/cannon/search/east/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,tag=delay_5] run function medabots_server:set_blocks/action_floor/cannon/search/east/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,tag=delay_6] run function medabots_server:set_blocks/action_floor/cannon/search/east/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,tag=delay_7] run function medabots_server:set_blocks/action_floor/cannon/search/east/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,tag=delay_8] run function medabots_server:set_blocks/action_floor/cannon/search/east/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,tag=delay_1] run function medabots_server:set_blocks/action_floor/cannon/search/north/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,tag=delay_2] run function medabots_server:set_blocks/action_floor/cannon/search/north/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,tag=delay_3] run function medabots_server:set_blocks/action_floor/cannon/search/north/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,tag=delay_4] run function medabots_server:set_blocks/action_floor/cannon/search/north/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,tag=delay_5] run function medabots_server:set_blocks/action_floor/cannon/search/north/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,tag=delay_6] run function medabots_server:set_blocks/action_floor/cannon/search/north/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,tag=delay_7] run function medabots_server:set_blocks/action_floor/cannon/search/north/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,tag=delay_8] run function medabots_server:set_blocks/action_floor/cannon/search/north/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,tag=delay_1] run function medabots_server:set_blocks/action_floor/cannon/search/south/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,tag=delay_2] run function medabots_server:set_blocks/action_floor/cannon/search/south/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,tag=delay_3] run function medabots_server:set_blocks/action_floor/cannon/search/south/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,tag=delay_4] run function medabots_server:set_blocks/action_floor/cannon/search/south/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,tag=delay_5] run function medabots_server:set_blocks/action_floor/cannon/search/south/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,tag=delay_6] run function medabots_server:set_blocks/action_floor/cannon/search/south/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,tag=delay_7] run function medabots_server:set_blocks/action_floor/cannon/search/south/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,tag=delay_8] run function medabots_server:set_blocks/action_floor/cannon/search/south/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,tag=delay_1] run function medabots_server:set_blocks/action_floor/cannon/search/west/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,tag=delay_2] run function medabots_server:set_blocks/action_floor/cannon/search/west/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,tag=delay_3] run function medabots_server:set_blocks/action_floor/cannon/search/west/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,tag=delay_4] run function medabots_server:set_blocks/action_floor/cannon/search/west/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,tag=delay_5] run function medabots_server:set_blocks/action_floor/cannon/search/west/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,tag=delay_6] run function medabots_server:set_blocks/action_floor/cannon/search/west/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,tag=delay_7] run function medabots_server:set_blocks/action_floor/cannon/search/west/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,tag=delay_8] run function medabots_server:set_blocks/action_floor/cannon/search/west/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,tag=delay_1] run function medabots_server:set_blocks/action_floor/cannon/tripwire/east/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,tag=delay_2] run function medabots_server:set_blocks/action_floor/cannon/tripwire/east/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,tag=delay_3] run function medabots_server:set_blocks/action_floor/cannon/tripwire/east/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,tag=delay_4] run function medabots_server:set_blocks/action_floor/cannon/tripwire/east/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,tag=delay_5] run function medabots_server:set_blocks/action_floor/cannon/tripwire/east/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,tag=delay_6] run function medabots_server:set_blocks/action_floor/cannon/tripwire/east/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,tag=delay_7] run function medabots_server:set_blocks/action_floor/cannon/tripwire/east/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,tag=delay_8] run function medabots_server:set_blocks/action_floor/cannon/tripwire/east/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,tag=delay_1] run function medabots_server:set_blocks/action_floor/cannon/tripwire/north/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,tag=delay_2] run function medabots_server:set_blocks/action_floor/cannon/tripwire/north/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,tag=delay_3] run function medabots_server:set_blocks/action_floor/cannon/tripwire/north/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,tag=delay_4] run function medabots_server:set_blocks/action_floor/cannon/tripwire/north/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,tag=delay_5] run function medabots_server:set_blocks/action_floor/cannon/tripwire/north/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,tag=delay_6] run function medabots_server:set_blocks/action_floor/cannon/tripwire/north/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,tag=delay_7] run function medabots_server:set_blocks/action_floor/cannon/tripwire/north/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,tag=delay_8] run function medabots_server:set_blocks/action_floor/cannon/tripwire/north/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,tag=delay_1] run function medabots_server:set_blocks/action_floor/cannon/tripwire/south/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,tag=delay_2] run function medabots_server:set_blocks/action_floor/cannon/tripwire/south/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,tag=delay_3] run function medabots_server:set_blocks/action_floor/cannon/tripwire/south/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,tag=delay_4] run function medabots_server:set_blocks/action_floor/cannon/tripwire/south/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,tag=delay_5] run function medabots_server:set_blocks/action_floor/cannon/tripwire/south/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,tag=delay_6] run function medabots_server:set_blocks/action_floor/cannon/tripwire/south/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,tag=delay_7] run function medabots_server:set_blocks/action_floor/cannon/tripwire/south/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,tag=delay_8] run function medabots_server:set_blocks/action_floor/cannon/tripwire/south/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,tag=delay_1] run function medabots_server:set_blocks/action_floor/cannon/tripwire/west/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,tag=delay_2] run function medabots_server:set_blocks/action_floor/cannon/tripwire/west/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,tag=delay_3] run function medabots_server:set_blocks/action_floor/cannon/tripwire/west/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,tag=delay_4] run function medabots_server:set_blocks/action_floor/cannon/tripwire/west/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,tag=delay_5] run function medabots_server:set_blocks/action_floor/cannon/tripwire/west/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,tag=delay_6] run function medabots_server:set_blocks/action_floor/cannon/tripwire/west/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,tag=delay_7] run function medabots_server:set_blocks/action_floor/cannon/tripwire/west/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,tag=delay_8] run function medabots_server:set_blocks/action_floor/cannon/tripwire/west/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,tag=delay_1] run function medabots_server:set_blocks/action_floor/cannon/swiffle/east/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,tag=delay_2] run function medabots_server:set_blocks/action_floor/cannon/swiffle/east/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,tag=delay_3] run function medabots_server:set_blocks/action_floor/cannon/swiffle/east/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,tag=delay_4] run function medabots_server:set_blocks/action_floor/cannon/swiffle/east/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,tag=delay_5] run function medabots_server:set_blocks/action_floor/cannon/swiffle/east/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,tag=delay_6] run function medabots_server:set_blocks/action_floor/cannon/swiffle/east/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,tag=delay_7] run function medabots_server:set_blocks/action_floor/cannon/swiffle/east/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,tag=delay_8] run function medabots_server:set_blocks/action_floor/cannon/swiffle/east/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,tag=delay_1] run function medabots_server:set_blocks/action_floor/cannon/swiffle/north/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,tag=delay_2] run function medabots_server:set_blocks/action_floor/cannon/swiffle/north/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,tag=delay_3] run function medabots_server:set_blocks/action_floor/cannon/swiffle/north/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,tag=delay_4] run function medabots_server:set_blocks/action_floor/cannon/swiffle/north/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,tag=delay_5] run function medabots_server:set_blocks/action_floor/cannon/swiffle/north/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,tag=delay_6] run function medabots_server:set_blocks/action_floor/cannon/swiffle/north/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,tag=delay_7] run function medabots_server:set_blocks/action_floor/cannon/swiffle/north/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,tag=delay_8] run function medabots_server:set_blocks/action_floor/cannon/swiffle/north/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,tag=delay_1] run function medabots_server:set_blocks/action_floor/cannon/swiffle/south/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,tag=delay_2] run function medabots_server:set_blocks/action_floor/cannon/swiffle/south/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,tag=delay_3] run function medabots_server:set_blocks/action_floor/cannon/swiffle/south/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,tag=delay_4] run function medabots_server:set_blocks/action_floor/cannon/swiffle/south/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,tag=delay_5] run function medabots_server:set_blocks/action_floor/cannon/swiffle/south/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,tag=delay_6] run function medabots_server:set_blocks/action_floor/cannon/swiffle/south/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,tag=delay_7] run function medabots_server:set_blocks/action_floor/cannon/swiffle/south/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,tag=delay_8] run function medabots_server:set_blocks/action_floor/cannon/swiffle/south/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,tag=delay_1] run function medabots_server:set_blocks/action_floor/cannon/swiffle/west/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,tag=delay_2] run function medabots_server:set_blocks/action_floor/cannon/swiffle/west/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,tag=delay_3] run function medabots_server:set_blocks/action_floor/cannon/swiffle/west/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,tag=delay_4] run function medabots_server:set_blocks/action_floor/cannon/swiffle/west/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,tag=delay_5] run function medabots_server:set_blocks/action_floor/cannon/swiffle/west/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,tag=delay_6] run function medabots_server:set_blocks/action_floor/cannon/swiffle/west/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,tag=delay_7] run function medabots_server:set_blocks/action_floor/cannon/swiffle/west/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,tag=delay_8] run function medabots_server:set_blocks/action_floor/cannon/swiffle/west/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,tag=delay_1] run function medabots_server:set_blocks/action_floor/cannon/still/east/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,tag=delay_2] run function medabots_server:set_blocks/action_floor/cannon/still/east/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,tag=delay_3] run function medabots_server:set_blocks/action_floor/cannon/still/east/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,tag=delay_4] run function medabots_server:set_blocks/action_floor/cannon/still/east/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,tag=delay_5] run function medabots_server:set_blocks/action_floor/cannon/still/east/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,tag=delay_6] run function medabots_server:set_blocks/action_floor/cannon/still/east/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,tag=delay_7] run function medabots_server:set_blocks/action_floor/cannon/still/east/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,tag=delay_8] run function medabots_server:set_blocks/action_floor/cannon/still/east/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,tag=delay_1] run function medabots_server:set_blocks/action_floor/cannon/still/north/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,tag=delay_2] run function medabots_server:set_blocks/action_floor/cannon/still/north/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,tag=delay_3] run function medabots_server:set_blocks/action_floor/cannon/still/north/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,tag=delay_4] run function medabots_server:set_blocks/action_floor/cannon/still/north/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,tag=delay_5] run function medabots_server:set_blocks/action_floor/cannon/still/north/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,tag=delay_6] run function medabots_server:set_blocks/action_floor/cannon/still/north/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,tag=delay_7] run function medabots_server:set_blocks/action_floor/cannon/still/north/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,tag=delay_8] run function medabots_server:set_blocks/action_floor/cannon/still/north/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,tag=delay_1] run function medabots_server:set_blocks/action_floor/cannon/still/south/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,tag=delay_2] run function medabots_server:set_blocks/action_floor/cannon/still/south/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,tag=delay_3] run function medabots_server:set_blocks/action_floor/cannon/still/south/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,tag=delay_4] run function medabots_server:set_blocks/action_floor/cannon/still/south/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,tag=delay_5] run function medabots_server:set_blocks/action_floor/cannon/still/south/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,tag=delay_6] run function medabots_server:set_blocks/action_floor/cannon/still/south/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,tag=delay_7] run function medabots_server:set_blocks/action_floor/cannon/still/south/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,tag=delay_8] run function medabots_server:set_blocks/action_floor/cannon/still/south/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,tag=delay_1] run function medabots_server:set_blocks/action_floor/cannon/still/west/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,tag=delay_2] run function medabots_server:set_blocks/action_floor/cannon/still/west/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,tag=delay_3] run function medabots_server:set_blocks/action_floor/cannon/still/west/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,tag=delay_4] run function medabots_server:set_blocks/action_floor/cannon/still/west/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,tag=delay_5] run function medabots_server:set_blocks/action_floor/cannon/still/west/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,tag=delay_6] run function medabots_server:set_blocks/action_floor/cannon/still/west/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,tag=delay_7] run function medabots_server:set_blocks/action_floor/cannon/still/west/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,tag=delay_8] run function medabots_server:set_blocks/action_floor/cannon/still/west/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=ice_block,tag=!east,tag=!north,tag=!south,tag=!west] run function medabots_server:set_blocks/action_floor/ice_block
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=ice_block,tag=east] run function medabots_server:set_blocks/action_floor/ice_block/east
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=ice_block,tag=north] run function medabots_server:set_blocks/action_floor/ice_block/north
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=ice_block,tag=south] run function medabots_server:set_blocks/action_floor/ice_block/south
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=ice_block,tag=west] run function medabots_server:set_blocks/action_floor/ice_block/west
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=round_stone,tag=!east,tag=!north,tag=!south,tag=!west] run function medabots_server:set_blocks/action_floor/round_stone
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=round_stone,tag=east] run function medabots_server:set_blocks/action_floor/round_stone/east
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=round_stone,tag=north] run function medabots_server:set_blocks/action_floor/round_stone/north
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=round_stone,tag=south] run function medabots_server:set_blocks/action_floor/round_stone/south
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=round_stone,tag=west] run function medabots_server:set_blocks/action_floor/round_stone/west
tag @e[distance=..0.7,tag=action_floor] add no_ticking