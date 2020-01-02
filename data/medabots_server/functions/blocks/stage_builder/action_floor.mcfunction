# Spawn object
execute if entity @s[tag=balloon_bomb] run function medabots_server:set_blocks/action_floor/balloon_bomb/power_1
execute if entity @s[tag=bomb] run function medabots_server:set_blocks/action_floor/bomb/delay_5/power_1
execute if entity @s[tag=guard] run function medabots_server:set_blocks/action_floor/guard/medium/power_1
execute if entity @s[tag=cannon,tag=detect,tag=rotating,tag=east] run function medabots_server:set_blocks/action_floor/cannon/search/east/delay_4/power_1
execute if entity @s[tag=cannon,tag=detect,tag=rotating,tag=north] run function medabots_server:set_blocks/action_floor/cannon/search/north/delay_4/power_1
execute if entity @s[tag=cannon,tag=detect,tag=rotating,tag=south] run function medabots_server:set_blocks/action_floor/cannon/search/south/delay_4/power_1
execute if entity @s[tag=cannon,tag=detect,tag=rotating,tag=west] run function medabots_server:set_blocks/action_floor/cannon/search/west/delay_4/power_1
execute if entity @s[tag=cannon,tag=detect,tag=looking,tag=east] run function medabots_server:set_blocks/action_floor/cannon/tripwire/east/delay_4/power_1
execute if entity @s[tag=cannon,tag=detect,tag=looking,tag=north] run function medabots_server:set_blocks/action_floor/cannon/tripwire/north/delay_4/power_1
execute if entity @s[tag=cannon,tag=detect,tag=looking,tag=south] run function medabots_server:set_blocks/action_floor/cannon/tripwire/south/delay_4/power_1
execute if entity @s[tag=cannon,tag=detect,tag=looking,tag=west] run function medabots_server:set_blocks/action_floor/cannon/tripwire/west/delay_4/power_1
execute if entity @s[tag=cannon,tag=!detect,tag=rotating,tag=east] run function medabots_server:set_blocks/action_floor/cannon/swivel/east/delay_4/power_1
execute if entity @s[tag=cannon,tag=!detect,tag=rotating,tag=north] run function medabots_server:set_blocks/action_floor/cannon/swivel/north/delay_4/power_1
execute if entity @s[tag=cannon,tag=!detect,tag=rotating,tag=south] run function medabots_server:set_blocks/action_floor/cannon/swivel/south/delay_4/power_1
execute if entity @s[tag=cannon,tag=!detect,tag=rotating,tag=west] run function medabots_server:set_blocks/action_floor/cannon/swivel/west/delay_4/power_1
execute if entity @s[tag=cannon,tag=!detect,tag=looking,tag=east] run function medabots_server:set_blocks/action_floor/cannon/still/east/delay_4/power_1
execute if entity @s[tag=cannon,tag=!detect,tag=looking,tag=north] run function medabots_server:set_blocks/action_floor/cannon/still/north/delay_4/power_1
execute if entity @s[tag=cannon,tag=!detect,tag=looking,tag=south] run function medabots_server:set_blocks/action_floor/cannon/still/south/delay_4/power_1
execute if entity @s[tag=cannon,tag=!detect,tag=looking,tag=west] run function medabots_server:set_blocks/action_floor/cannon/still/west/delay_4/power_1
execute if entity @s[tag=round_stone] run function medabots_server:set_blocks/action_floor/round_stone/power_1
execute if entity @s[tag=ice_block] run function medabots_server:set_blocks/action_floor/ice_block/power_1
tag @e[distance=..0.7,tag=action_floor] add custom_stage

# Give additional data
scoreboard players operation @e[distance=..0.7,tag=action_floor] HomeX = @s HomeX
scoreboard players operation @e[distance=..0.7,tag=action_floor] HomeY = @s HomeY
scoreboard players operation @e[distance=..0.7,tag=action_floor] HomeZ = @s HomeZ
scoreboard players operation @e[distance=..0.7,tag=action_floor] PowerNeeded = @s PowerNeeded
scoreboard players operation @e[distance=..0.7,tag=action_floor] DelayTime = @s DelayTime