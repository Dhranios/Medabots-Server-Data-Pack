execute if block ~ ~ ~ minecraft:comparator run tag @s add allowed
execute if entity @e[distance=..0.7,tag=floor_switch] run tag @s add allowed
execute if entity @e[distance=..0.7,tag=jammy,tag=!pot] run tag @s add allowed
execute if entity @e[distance=..0.7,tag=balloon_bomb,tag=!pot,tag=!pot] run tag @s add allowed
execute if entity @e[distance=..0.7,tag=bomb,tag=!pot,tag=!pot] run tag @s add allowed
execute if entity @e[distance=..0.7,tag=cannon,tag=!pot,tag=!pot] run tag @s add allowed
execute if entity @e[distance=..0.7,tag=guard,tag=!pot,tag=!pot] run tag @s add allowed
execute if block ~ ~-1 ~ minecraft:air run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:water positioned ~ ~-0.6 ~ unless entity @e[distance=..0.7,tag=raft] run tag @s remove allowed
execute if block ~ ~-1 ~ minecraft:barrier run tag @s remove allowed

execute if block ~ ~ ~ minecraft:comparator run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.pot.accelerator"}
execute if entity @e[distance=..0.7,tag=jammy,tag=!pot] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.pot.jammy"}
execute if entity @e[distance=..0.7,tag=balloon_bomb,tag=!pot,tag=!pot] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.pot.balloon_bomb"}
execute if entity @e[distance=..0.7,tag=bomb,tag=!pot,tag=!pot] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.pot.bomb"}
execute if entity @e[distance=..0.7,tag=cannon,tag=!pot,tag=!pot] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.pot.cannon"}
execute if entity @e[distance=..0.7,tag=guard,tag=!pot,tag=!pot] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.pot.guard"}
tag @e[distance=..0.7,tag=jammy,tag=!pot] add dead
tag @e[distance=..0.7,tag=balloon_bomb,tag=!pot,tag=!pot] add dead
tag @e[distance=..0.7,tag=bomb,tag=!pot,tag=!pot] add dead
tag @e[distance=..0.7,tag=cannon,tag=!pot,tag=!pot] add dead
tag @e[distance=..0.7,tag=guard,tag=!pot,tag=!pot] add dead
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=jammy] run function medabots_server:set_blocks/pot/jammy
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=balloon_bomb] run function medabots_server:set_blocks/pot/balloon_bomb
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb] run function medabots_server:set_blocks/pot/bomb/delay_5
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=guard] run function medabots_server:set_blocks/pot/guard/medium
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east] run function medabots_server:set_blocks/pot/cannon/search/east/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north] run function medabots_server:set_blocks/pot/cannon/search/north/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south] run function medabots_server:set_blocks/pot/cannon/search/south/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west] run function medabots_server:set_blocks/pot/cannon/search/west/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east] run function medabots_server:set_blocks/pot/cannon/tripwire/east/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north] run function medabots_server:set_blocks/pot/cannon/tripwire/north/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south] run function medabots_server:set_blocks/pot/cannon/tripwire/south/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west] run function medabots_server:set_blocks/pot/cannon/tripwire/west/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east] run function medabots_server:set_blocks/pot/cannon/swiffle/east/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north] run function medabots_server:set_blocks/pot/cannon/swiffle/north/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south] run function medabots_server:set_blocks/pot/cannon/swiffle/south/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west] run function medabots_server:set_blocks/pot/cannon/swiffle/west/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east] run function medabots_server:set_blocks/pot/cannon/still/east/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north] run function medabots_server:set_blocks/pot/cannon/still/north/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south] run function medabots_server:set_blocks/pot/cannon/still/south/delay_4
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west] run function medabots_server:set_blocks/pot/cannon/still/west/delay_4
execute if entity @e[tag=dead,distance=..0.7,tag=bomb] run scoreboard players operation @e[tag=pot,distance=..0.7,limit=1] DelayTime = @e[tag=dead,distance=..0.7,tag=bomb,limit=1] DelayTime
execute if entity @e[tag=dead,distance=..0.7,tag=guard] run scoreboard players operation @e[tag=pot,distance=..0.7,limit=1] DelayTime = @e[tag=dead,distance=..0.7,tag=guard,limit=1] Speed
execute if entity @e[tag=dead,distance=..0.7,tag=cannon] run scoreboard players operation @e[tag=pot,distance=..0.7,limit=1] DelayTime = @e[tag=dead,distance=..0.7,tag=cannon,limit=1] DelayTime
tag @e[distance=..0.7,tag=pot] add no_ticking