# Remove
kill @s

# Objects without variants
execute if entity @s[tag=starting_area] run function medabots_server:set_blocks/starting_area
execute if entity @s[tag=goal_area] run function medabots_server:set_blocks/goal_area
execute if entity @s[tag=stone] run function medabots_server:set_blocks/stone
execute if entity @s[tag=wall] run function medabots_server:set_blocks/wall
execute if entity @s[tag=glass] run function medabots_server:set_blocks/glass
execute if entity @s[tag=balloon_bomb,tag=!action_floor,tag=!pot] run function medabots_server:spawn_entities/balloon_bomb
execute if entity @s[tag=raft] run function medabots_server:spawn_entities/raft
execute if entity @s[tag=whirlpool] run function medabots_server:set_blocks/whirlpool
execute if entity @s[tag=algae] run function medabots_server:set_blocks/algae
execute if entity @s[tag=bridge] run function medabots_server:set_blocks/bridge
execute if entity @s[tag=jammy,tag=!pot] run function medabots_server:set_blocks/jammy

# Objects with variants
execute if entity @s[tag=pot] run function medabots_server:blocks/stage_builder/pot
execute if entity @s[tag=hole] run function medabots_server:blocks/stage_builder/hole
execute if entity @s[tag=drawbridge] run function medabots_server:blocks/stage_builder/drawbridge
execute if entity @s[tag=mirror] run function medabots_server:blocks/stage_builder/mirror
execute if entity @s[tag=accelerator] run function medabots_server:blocks/stage_builder/accelerator
execute if entity @s[tag=rubberobo] run function medabots_server:blocks/stage_builder/rubberobo

# Objects with more custom data
execute if entity @s[tag=floor_switch] run function medabots_server:blocks/stage_builder/floor_switch
execute if entity @s[tag=fan] run function medabots_server:blocks/stage_builder/fan
execute if entity @s[tag=press_wall] run function medabots_server:blocks/stage_builder/press_wall
execute if entity @s[tag=alarm] run function medabots_server:blocks/stage_builder/alarm
execute if entity @s[tag=door] run function medabots_server:blocks/stage_builder/door
execute if entity @s[tag=action_floor] run function medabots_server:blocks/stage_builder/action_floor
execute if entity @s[tag=spring_wall] run function medabots_server:blocks/stage_builder/spring_wall
execute if entity @s[tag=gas_floor] run function medabots_server:blocks/stage_builder/gas_floor
execute if entity @s[tag=hammer_punch] run function medabots_server:blocks/stage_builder/hammer_punch
execute if entity @s[tag=laser_trap] run function medabots_server:blocks/stage_builder/laser_trap
execute if entity @s[tag=guard,tag=!action_floor,tag=!pot] run function medabots_server:blocks/stage_builder/guard
execute if entity @s[tag=cannon,tag=!action_floor,tag=!pot] run function medabots_server:blocks/stage_builder/cannon
execute if entity @s[tag=round_stone,tag=!action_floor] run function medabots_server:blocks/stage_builder/round_stone
execute if entity @s[tag=ice_block,tag=!action_floor] run function medabots_server:blocks/stage_builder/ice_block
execute if entity @s[tag=bomb,tag=!action_floor] run function medabots_server:blocks/stage_builder/bomb

execute if entity @s[tag=no_ticker] run tag @e[distance=..0.7,type=!minecraft:player] add no_ticking