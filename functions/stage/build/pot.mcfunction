execute if block ~ ~ ~ minecraft:comparator run tag @s add allowed
execute if entity @e[distance=..0.7,tag=floor_switch] run tag @s add allowed
execute if entity @e[distance=..0.7,tag=jammy,tag=!pot] run tag @s add allowed
execute if entity @e[distance=..0.7,tag=balloon_bomb,tag=!pot,tag=!action_floor] run tag @s add allowed
execute if entity @e[distance=..0.7,tag=bomb,tag=!pot,tag=!action_floor] run tag @s add allowed
execute if entity @e[distance=..0.7,tag=cannon,tag=!pot,tag=!action_floor] run tag @s add allowed
execute if entity @e[distance=..0.7,tag=guard,tag=!pot,tag=!action_floor] run tag @s add allowed
execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water positioned ~ ~-0.6 ~ unless entity @e[distance=..0.7,tag=raft] run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed

execute if block ~ ~ ~ minecraft:comparator run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.pot.accelerator"}
execute if entity @e[distance=..0.7,tag=jammy,tag=!pot] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.pot.jammy"}
execute if entity @e[distance=..0.7,tag=balloon_bomb,tag=!pot,tag=!action_floor] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.pot.balloon_bomb"}
execute if entity @e[distance=..0.7,tag=bomb,tag=!pot,tag=!action_floor] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.pot.bomb"}
execute if entity @e[distance=..0.7,tag=cannon,tag=!pot,tag=!action_floor] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.pot.cannon"}
execute if entity @e[distance=..0.7,tag=guard,tag=!pot,tag=!action_floor] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.pot.guard"}
tag @e[distance=..0.7,tag=jammy,tag=!pot] add dead
execute run tag @e[distance=..0.7,tag=balloon_bomb,tag=!pot,tag=!action_floor] add dead
execute run tag @e[distance=..0.7,tag=bomb,tag=!pot,tag=!action_floor] add dead
execute run tag @e[distance=..0.7,tag=cannon,tag=!pot,tag=!action_floor] add dead
execute run tag @e[distance=..0.7,tag=guard,tag=!pot,tag=!action_floor] add dead
execute if entity @s[tag=allowed] unless entity @e[tag=dead,distance=..0.7,tag=balloon_bomb] unless entity @e[tag=dead,distance=..0.7,tag=bomb] unless entity @e[tag=dead,distance=..0.7,tag=guard] unless entity @e[tag=dead,distance=..0.7,tag=cannon] unless entity @e[tag=dead,distance=..0.7,tag=jammy] run function medabots_server:set_blocks/pot
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=jammy] run function medabots_server:set_blocks/pot/jammy
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=balloon_bomb] run function medabots_server:set_blocks/pot/balloon_bomb
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,scores={DelayTime=0}] run function medabots_server:set_blocks/pot/bomb/delay_0
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,scores={DelayTime=100}] run function medabots_server:set_blocks/pot/bomb/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,scores={DelayTime=200}] run function medabots_server:set_blocks/pot/bomb/delay_10
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,scores={DelayTime=600}] run function medabots_server:set_blocks/pot/bomb/delay_30
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,scores={DelayTime=1200}] run function medabots_server:set_blocks/pot/bomb/delay_60
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,scores={DelayTime=1800}] run function medabots_server:set_blocks/pot/bomb/delay_90
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb,scores={DelayTime=2400}] run function medabots_server:set_blocks/pot/bomb/delay_120
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=guard,scores={Speed=1}] run function medabots_server:set_blocks/pot/guard/slow
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=guard,scores={Speed=2}] run function medabots_server:set_blocks/pot/guard/medium
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=guard,scores={Speed=4}] run function medabots_server:set_blocks/pot/guard/fast
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,scores={DelayTime=20}] run function medabots_server:set_blocks/pot/cannon/search/east/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,scores={DelayTime=40}] run function medabots_server:set_blocks/pot/cannon/search/east/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,scores={DelayTime=60}] run function medabots_server:set_blocks/pot/cannon/search/east/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,scores={DelayTime=80}] run function medabots_server:set_blocks/pot/cannon/search/east/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,scores={DelayTime=100}] run function medabots_server:set_blocks/pot/cannon/search/east/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,scores={DelayTime=120}] run function medabots_server:set_blocks/pot/cannon/search/east/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,scores={DelayTime=140}] run function medabots_server:set_blocks/pot/cannon/search/east/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east,scores={DelayTime=160}] run function medabots_server:set_blocks/pot/cannon/search/east/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,scores={DelayTime=20}] run function medabots_server:set_blocks/pot/cannon/search/north/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,scores={DelayTime=40}] run function medabots_server:set_blocks/pot/cannon/search/north/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,scores={DelayTime=60}] run function medabots_server:set_blocks/pot/cannon/search/north/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,scores={DelayTime=80}] run function medabots_server:set_blocks/pot/cannon/search/north/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,scores={DelayTime=100}] run function medabots_server:set_blocks/pot/cannon/search/north/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,scores={DelayTime=120}] run function medabots_server:set_blocks/pot/cannon/search/north/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,scores={DelayTime=140}] run function medabots_server:set_blocks/pot/cannon/search/north/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north,scores={DelayTime=160}] run function medabots_server:set_blocks/pot/cannon/search/north/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,scores={DelayTime=20}] run function medabots_server:set_blocks/pot/cannon/search/south/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,scores={DelayTime=40}] run function medabots_server:set_blocks/pot/cannon/search/south/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,scores={DelayTime=60}] run function medabots_server:set_blocks/pot/cannon/search/south/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,scores={DelayTime=80}] run function medabots_server:set_blocks/pot/cannon/search/south/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,scores={DelayTime=100}] run function medabots_server:set_blocks/pot/cannon/search/south/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,scores={DelayTime=120}] run function medabots_server:set_blocks/pot/cannon/search/south/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,scores={DelayTime=140}] run function medabots_server:set_blocks/pot/cannon/search/south/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south,scores={DelayTime=160}] run function medabots_server:set_blocks/pot/cannon/search/south/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,scores={DelayTime=20}] run function medabots_server:set_blocks/pot/cannon/search/west/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,scores={DelayTime=40}] run function medabots_server:set_blocks/pot/cannon/search/west/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,scores={DelayTime=60}] run function medabots_server:set_blocks/pot/cannon/search/west/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,scores={DelayTime=80}] run function medabots_server:set_blocks/pot/cannon/search/west/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,scores={DelayTime=100}] run function medabots_server:set_blocks/pot/cannon/search/west/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,scores={DelayTime=120}] run function medabots_server:set_blocks/pot/cannon/search/west/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,scores={DelayTime=140}] run function medabots_server:set_blocks/pot/cannon/search/west/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west,scores={DelayTime=160}] run function medabots_server:set_blocks/pot/cannon/search/west/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,scores={DelayTime=20}] run function medabots_server:set_blocks/pot/cannon/tripwire/east/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,scores={DelayTime=40}] run function medabots_server:set_blocks/pot/cannon/tripwire/east/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,scores={DelayTime=60}] run function medabots_server:set_blocks/pot/cannon/tripwire/east/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,scores={DelayTime=80}] run function medabots_server:set_blocks/pot/cannon/tripwire/east/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,scores={DelayTime=100}] run function medabots_server:set_blocks/pot/cannon/tripwire/east/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,scores={DelayTime=120}] run function medabots_server:set_blocks/pot/cannon/tripwire/east/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,scores={DelayTime=140}] run function medabots_server:set_blocks/pot/cannon/tripwire/east/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east,scores={DelayTime=160}] run function medabots_server:set_blocks/pot/cannon/tripwire/east/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,scores={DelayTime=20}] run function medabots_server:set_blocks/pot/cannon/tripwire/north/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,scores={DelayTime=40}] run function medabots_server:set_blocks/pot/cannon/tripwire/north/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,scores={DelayTime=60}] run function medabots_server:set_blocks/pot/cannon/tripwire/north/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,scores={DelayTime=80}] run function medabots_server:set_blocks/pot/cannon/tripwire/north/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,scores={DelayTime=100}] run function medabots_server:set_blocks/pot/cannon/tripwire/north/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,scores={DelayTime=120}] run function medabots_server:set_blocks/pot/cannon/tripwire/north/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,scores={DelayTime=140}] run function medabots_server:set_blocks/pot/cannon/tripwire/north/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north,scores={DelayTime=160}] run function medabots_server:set_blocks/pot/cannon/tripwire/north/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,scores={DelayTime=20}] run function medabots_server:set_blocks/pot/cannon/tripwire/south/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,scores={DelayTime=40}] run function medabots_server:set_blocks/pot/cannon/tripwire/south/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,scores={DelayTime=60}] run function medabots_server:set_blocks/pot/cannon/tripwire/south/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,scores={DelayTime=80}] run function medabots_server:set_blocks/pot/cannon/tripwire/south/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,scores={DelayTime=100}] run function medabots_server:set_blocks/pot/cannon/tripwire/south/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,scores={DelayTime=120}] run function medabots_server:set_blocks/pot/cannon/tripwire/south/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,scores={DelayTime=140}] run function medabots_server:set_blocks/pot/cannon/tripwire/south/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south,scores={DelayTime=160}] run function medabots_server:set_blocks/pot/cannon/tripwire/south/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,scores={DelayTime=20}] run function medabots_server:set_blocks/pot/cannon/tripwire/west/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,scores={DelayTime=40}] run function medabots_server:set_blocks/pot/cannon/tripwire/west/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,scores={DelayTime=60}] run function medabots_server:set_blocks/pot/cannon/tripwire/west/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,scores={DelayTime=80}] run function medabots_server:set_blocks/pot/cannon/tripwire/west/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,scores={DelayTime=100}] run function medabots_server:set_blocks/pot/cannon/tripwire/west/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,scores={DelayTime=120}] run function medabots_server:set_blocks/pot/cannon/tripwire/west/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,scores={DelayTime=140}] run function medabots_server:set_blocks/pot/cannon/tripwire/west/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west,scores={DelayTime=160}] run function medabots_server:set_blocks/pot/cannon/tripwire/west/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,scores={DelayTime=20}] run function medabots_server:set_blocks/pot/cannon/swiffle/east/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,scores={DelayTime=40}] run function medabots_server:set_blocks/pot/cannon/swiffle/east/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,scores={DelayTime=60}] run function medabots_server:set_blocks/pot/cannon/swiffle/east/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,scores={DelayTime=80}] run function medabots_server:set_blocks/pot/cannon/swiffle/east/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,scores={DelayTime=100}] run function medabots_server:set_blocks/pot/cannon/swiffle/east/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,scores={DelayTime=120}] run function medabots_server:set_blocks/pot/cannon/swiffle/east/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,scores={DelayTime=140}] run function medabots_server:set_blocks/pot/cannon/swiffle/east/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east,scores={DelayTime=160}] run function medabots_server:set_blocks/pot/cannon/swiffle/east/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,scores={DelayTime=20}] run function medabots_server:set_blocks/pot/cannon/swiffle/north/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,scores={DelayTime=40}] run function medabots_server:set_blocks/pot/cannon/swiffle/north/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,scores={DelayTime=60}] run function medabots_server:set_blocks/pot/cannon/swiffle/north/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,scores={DelayTime=80}] run function medabots_server:set_blocks/pot/cannon/swiffle/north/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,scores={DelayTime=100}] run function medabots_server:set_blocks/pot/cannon/swiffle/north/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,scores={DelayTime=120}] run function medabots_server:set_blocks/pot/cannon/swiffle/north/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,scores={DelayTime=140}] run function medabots_server:set_blocks/pot/cannon/swiffle/north/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north,scores={DelayTime=160}] run function medabots_server:set_blocks/pot/cannon/swiffle/north/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,scores={DelayTime=20}] run function medabots_server:set_blocks/pot/cannon/swiffle/south/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,scores={DelayTime=40}] run function medabots_server:set_blocks/pot/cannon/swiffle/south/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,scores={DelayTime=60}] run function medabots_server:set_blocks/pot/cannon/swiffle/south/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,scores={DelayTime=80}] run function medabots_server:set_blocks/pot/cannon/swiffle/south/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,scores={DelayTime=100}] run function medabots_server:set_blocks/pot/cannon/swiffle/south/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,scores={DelayTime=120}] run function medabots_server:set_blocks/pot/cannon/swiffle/south/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,scores={DelayTime=140}] run function medabots_server:set_blocks/pot/cannon/swiffle/south/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south,scores={DelayTime=160}] run function medabots_server:set_blocks/pot/cannon/swiffle/south/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,scores={DelayTime=20}] run function medabots_server:set_blocks/pot/cannon/swiffle/west/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,scores={DelayTime=40}] run function medabots_server:set_blocks/pot/cannon/swiffle/west/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,scores={DelayTime=60}] run function medabots_server:set_blocks/pot/cannon/swiffle/west/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,scores={DelayTime=80}] run function medabots_server:set_blocks/pot/cannon/swiffle/west/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,scores={DelayTime=100}] run function medabots_server:set_blocks/pot/cannon/swiffle/west/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,scores={DelayTime=120}] run function medabots_server:set_blocks/pot/cannon/swiffle/west/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,scores={DelayTime=140}] run function medabots_server:set_blocks/pot/cannon/swiffle/west/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west,scores={DelayTime=160}] run function medabots_server:set_blocks/pot/cannon/swiffle/west/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,scores={DelayTime=20}] run function medabots_server:set_blocks/pot/cannon/still/east/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,scores={DelayTime=40}] run function medabots_server:set_blocks/pot/cannon/still/east/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,scores={DelayTime=60}] run function medabots_server:set_blocks/pot/cannon/still/east/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,scores={DelayTime=80}] run function medabots_server:set_blocks/pot/cannon/still/east/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,scores={DelayTime=100}] run function medabots_server:set_blocks/pot/cannon/still/east/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,scores={DelayTime=120}] run function medabots_server:set_blocks/pot/cannon/still/east/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,scores={DelayTime=140}] run function medabots_server:set_blocks/pot/cannon/still/east/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east,scores={DelayTime=160}] run function medabots_server:set_blocks/pot/cannon/still/east/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,scores={DelayTime=20}] run function medabots_server:set_blocks/pot/cannon/still/north/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,scores={DelayTime=40}] run function medabots_server:set_blocks/pot/cannon/still/north/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,scores={DelayTime=60}] run function medabots_server:set_blocks/pot/cannon/still/north/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,scores={DelayTime=80}] run function medabots_server:set_blocks/pot/cannon/still/north/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,scores={DelayTime=100}] run function medabots_server:set_blocks/pot/cannon/still/north/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,scores={DelayTime=120}] run function medabots_server:set_blocks/pot/cannon/still/north/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,scores={DelayTime=140}] run function medabots_server:set_blocks/pot/cannon/still/north/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north,scores={DelayTime=160}] run function medabots_server:set_blocks/pot/cannon/still/north/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,scores={DelayTime=20}] run function medabots_server:set_blocks/pot/cannon/still/south/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,scores={DelayTime=40}] run function medabots_server:set_blocks/pot/cannon/still/south/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,scores={DelayTime=60}] run function medabots_server:set_blocks/pot/cannon/still/south/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,scores={DelayTime=80}] run function medabots_server:set_blocks/pot/cannon/still/south/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,scores={DelayTime=100}] run function medabots_server:set_blocks/pot/cannon/still/south/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,scores={DelayTime=120}] run function medabots_server:set_blocks/pot/cannon/still/south/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,scores={DelayTime=140}] run function medabots_server:set_blocks/pot/cannon/still/south/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south,scores={DelayTime=160}] run function medabots_server:set_blocks/pot/cannon/still/south/delay_8
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,scores={DelayTime=20}] run function medabots_server:set_blocks/pot/cannon/still/west/delay_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,scores={DelayTime=40}] run function medabots_server:set_blocks/pot/cannon/still/west/delay_2
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,scores={DelayTime=60}] run function medabots_server:set_blocks/pot/cannon/still/west/delay_3
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,scores={DelayTime=80}] run function medabots_server:set_blocks/pot/cannon/still/west/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,scores={DelayTime=100}] run function medabots_server:set_blocks/pot/cannon/still/west/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,scores={DelayTime=120}] run function medabots_server:set_blocks/pot/cannon/still/west/delay_6
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,scores={DelayTime=140}] run function medabots_server:set_blocks/pot/cannon/still/west/delay_7
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west,scores={DelayTime=160}] run function medabots_server:set_blocks/pot/cannon/still/west/delay_8
tag @e[distance=..0.7,tag=pot] add no_ticking