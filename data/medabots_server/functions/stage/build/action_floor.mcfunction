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
tag @e[distance=..0.7,tag=balloon_bomb,tag=!pot,tag=!action_floor] add dead
tag @e[distance=..0.7,tag=bomb,tag=!pot,tag=!action_floor] add dead
tag @e[distance=..0.7,tag=cannon,tag=!pot,tag=!action_floor] add dead
tag @e[distance=..0.7,tag=guard,tag=!pot,tag=!action_floor] add dead
tag @e[distance=..0.7,tag=ice_block,tag=!action_floor] add dead
tag @e[distance=..0.7,tag=round_stone,tag=!action_floor] add dead
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=balloon_bomb] run function medabots_server:set_blocks/action_floor/balloon_bomb/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=bomb] run function medabots_server:set_blocks/action_floor/bomb/delay_5/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=guard] run function medabots_server:set_blocks/action_floor/guard/medium/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=east] run function medabots_server:set_blocks/action_floor/cannon/search/east/delay_4/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=north] run function medabots_server:set_blocks/action_floor/cannon/search/north/delay_4/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=south] run function medabots_server:set_blocks/action_floor/cannon/search/south/delay_4/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=rotating,tag=west] run function medabots_server:set_blocks/action_floor/cannon/search/west/delay_4/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=east] run function medabots_server:set_blocks/action_floor/cannon/tripwire/east/delay_4/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=north] run function medabots_server:set_blocks/action_floor/cannon/tripwire/north/delay_4/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=south] run function medabots_server:set_blocks/action_floor/cannon/tripwire/south/delay_4/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=detect,tag=looking,tag=west] run function medabots_server:set_blocks/action_floor/cannon/tripwire/west/delay_4/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=east] run function medabots_server:set_blocks/action_floor/cannon/swivel/east/delay_4/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=north] run function medabots_server:set_blocks/action_floor/cannon/swivel/north/delay_4/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=south] run function medabots_server:set_blocks/action_floor/cannon/swivel/south/delay_4/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=rotating,tag=west] run function medabots_server:set_blocks/action_floor/cannon/swivel/west/delay_4/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=east] run function medabots_server:set_blocks/action_floor/cannon/still/east/delay_4/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=north] run function medabots_server:set_blocks/action_floor/cannon/still/north/delay_4/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=south] run function medabots_server:set_blocks/action_floor/cannon/still/south/delay_4/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=cannon,tag=!detect,tag=looking,tag=west] run function medabots_server:set_blocks/action_floor/cannon/still/west/delay_4/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=ice_block] run function medabots_server:set_blocks/action_floor/ice_block/power_1
execute if entity @s[tag=allowed] if entity @e[tag=dead,distance=..0.7,tag=round_stone] run function medabots_server:set_blocks/action_floor/round_stone/power_1
execute if entity @e[tag=dead,distance=..0.7,tag=bomb] run scoreboard players operation @e[tag=action_floor,distance=..0.7,limit=1] DelayTime = @e[tag=dead,distance=..0.7,tag=bomb,limit=1] DelayTime
execute if entity @e[tag=dead,distance=..0.7,tag=guard] run scoreboard players operation @e[tag=action_floor,distance=..0.7,limit=1] DelayTime = @e[tag=dead,distance=..0.7,tag=guard,limit=1] Speed
execute if entity @e[tag=dead,distance=..0.7,tag=cannon] run scoreboard players operation @e[tag=action_floor,distance=..0.7,limit=1] DelayTime = @e[tag=dead,distance=..0.7,tag=cannon,limit=1] DelayTime
execute if entity @e[tag=dead,distance=..0.7,tag=round_stone] run scoreboard players operation @e[tag=action_floor,distance=..0.7,limit=1] DelayTime = @e[tag=dead,distance=..0.7,tag=round_stone,limit=1] Moving
execute if entity @e[tag=dead,distance=..0.7,tag=ice_block] run scoreboard players operation @e[tag=action_floor,distance=..0.7,limit=1] DelayTime = @e[tag=dead,distance=..0.7,tag=ice_block,limit=1] Moving
tag @e[distance=..0.7,tag=action_floor] add no_ticking