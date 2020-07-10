# The small timer so that you can jump on other entities
execute if entity @s[tag=footstool] run function medabots_server:items/medapart/footstool/cloud

# Make the anti-tank, anti-fly and napalm attack do something
execute if entity @s[tag=anti_tank] run function medabots_server:items/medapart/anti_tank/attack
execute if entity @s[tag=anti_fly] run function medabots_server:items/medapart/anti_fly/cloud
execute if entity @s[tag=napalm] run function medabots_server:items/medapart/napalm/cloud

# The small timer so that you can grab ledges
execute if entity @s[tag=edge_grab] run function medabots_server:items/medapart/edge_grab/cloud

# Make stage objects do something
execute if entity @s[tag=mission,tag=!stage_builder] run function medabots_server:stage/mission
execute if entity @s[tag=raft,tag=!stage_builder,tag=!disabled] positioned ~ ~0.375 ~ run function medabots_server:entities/raft
execute if entity @s[tag=round_stone,tag=!action_floor,tag=!stage_builder,tag=!disabled] positioned ~ ~0.375 ~ run function medabots_server:entities/round_stone
execute if entity @s[tag=ice_block,tag=!action_floor,tag=!stage_builder,tag=!disabled] positioned ~ ~0.375 ~ run function medabots_server:entities/ice_block
execute if entity @s[tag=thin_ice,tag=!stage_builder,tag=!disabled] run function medabots_server:blocks/thin_ice
execute if entity @s[tag=balloon_bomb,tag=!action_floor,tag=!pot,tag=!stage_builder,tag=!disabled] positioned ~ ~0.375 ~ run function medabots_server:entities/balloon_bomb
execute if entity @s[tag=bomb,tag=!action_floor,tag=!pot,tag=!stage_builder,tag=!disabled] positioned ~ ~0.375 ~ run function medabots_server:entities/bomb
execute if entity @s[tag=gas_floor,tag=!stage_builder,tag=!disabled] run function medabots_server:blocks/gas_floor
execute if entity @s[tag=hole,tag=!stage_builder,tag=!disabled] run function medabots_server:blocks/hole
execute if entity @s[tag=wall,tag=!stage_builder,tag=!disabled] run function medabots_server:blocks/wall
execute if entity @s[tag=glass,tag=!stage_builder,tag=!disabled] run function medabots_server:blocks/glass
execute if entity @s[tag=bridge,tag=!stage_builder,tag=!disabled] run function medabots_server:blocks/bridge
execute if entity @s[tag=stone,tag=!stage_builder,tag=!disabled] run function medabots_server:blocks/stone
execute if entity @s[tag=pot,tag=!stage_builder,tag=!disabled] run function medabots_server:blocks/pot
execute if entity @s[tag=starting_area,tag=!stage_builder,tag=!disabled,tag=dead] run function medabots_server:blocks/starting_area/clean_up
execute if entity @s[tag=goal_area,tag=!stage_builder,tag=!disabled] run function medabots_server:blocks/goal_area
execute if entity @s[tag=whirlpool,tag=!stage_builder,tag=!disabled,tag=dead] run function medabots_server:blocks/whirlpool/clean_up

# Stage builder
execute if entity @s[tag=stage_builder] run function medabots_server:blocks/stage_builder