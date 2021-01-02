tag @e[distance=..0.7,tag=guard,tag=!pot,tag=!action_floor] add dead
tag @e[distance=..0.7,tag=cannon,tag=!pot,tag=!action_floor] add dead
tag @e[distance=..0.7,tag=bomb,tag=!pot,tag=!action_floor] add dead
execute positioned ~ ~0.7 ~ run tag @e[distance=..0.7,tag=balloon_bomb,tag=!pot,tag=!action_floor] add dead
tag @e[distance=..0.7,tag=round_stone,tag=!action_floor] add dead
tag @e[distance=..0.7,tag=ice_block,tag=!action_floor] add dead
tag @e[distance=..0.7,tag=rubberobo] add dead


tag @s add me
execute if entity @e[distance=..0.7,tag=!me,tag=!dead,tag=!model_piece,type=!minecraft:player,type=!minecraft:item,type=!minecraft:experience_orb,tag=!mr_referee,tag=!medabot_walk_detection,tag=!guard_walk_detection,tag=!mission] unless entity @e[distance=..0.7,tag=enemy_medabot,tag=!medabot] run tag @s add cancel
execute unless block ~ ~ ~ minecraft:air run tag @s[tag=!door] add cancel
execute unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:black_stained_glass unless block ~ ~ ~ minecraft:iron_trapdoor run tag @s[tag=door] add cancel

# Remove
kill @s

# Objects without variants
execute if entity @s[tag=!cancel,tag=starting_area] run function medabots_server:set_blocks/starting_area
execute if entity @s[tag=!cancel,tag=goal_area] run function medabots_server:set_blocks/goal_area
execute if entity @s[tag=!cancel,tag=stone] run function medabots_server:set_blocks/stone
execute if entity @s[tag=!cancel,tag=wall] run function medabots_server:set_blocks/wall
execute if entity @s[tag=!cancel,tag=glass] run function medabots_server:set_blocks/glass
execute if entity @s[tag=!cancel,tag=balloon_bomb,tag=!action_floor,tag=!pot] run function medabots_server:spawn_entities/balloon_bomb
execute if entity @s[tag=!cancel,tag=raft] run function medabots_server:spawn_entities/raft
execute if entity @s[tag=!cancel,tag=whirlpool] run function medabots_server:set_blocks/whirlpool
execute if entity @s[tag=!cancel,tag=algae] run function medabots_server:set_blocks/algae
execute if entity @s[tag=!cancel,tag=bridge] run function medabots_server:set_blocks/bridge
execute if entity @s[tag=!cancel,tag=jammy,tag=!pot] run function medabots_server:set_blocks/jammy

# Objects with variants
execute if entity @s[tag=!cancel,tag=drawbridge] run function medabots_server:blocks/stage_builder/drawbridge
execute if entity @s[tag=!cancel,tag=mirror] run function medabots_server:blocks/stage_builder/mirror
execute if entity @s[tag=!cancel,tag=accelerator] run function medabots_server:blocks/stage_builder/accelerator
execute if entity @s[tag=!cancel,tag=rubberobo] run function medabots_server:blocks/stage_builder/rubberobo

# Objects with more custom data
execute if entity @s[tag=!cancel,tag=hole] run function medabots_server:blocks/stage_builder/hole
execute if entity @s[tag=!cancel,tag=floor_switch] run function medabots_server:blocks/stage_builder/floor_switch
execute if entity @s[tag=!cancel,tag=fan] run function medabots_server:blocks/stage_builder/fan
execute if entity @s[tag=!cancel,tag=press_wall] run function medabots_server:blocks/stage_builder/press_wall
execute if entity @s[tag=!cancel,tag=alarm] run function medabots_server:blocks/stage_builder/alarm
execute if entity @s[tag=!cancel,tag=door] run function medabots_server:blocks/stage_builder/door
execute if entity @s[tag=!cancel,tag=pot] run function medabots_server:blocks/stage_builder/pot
execute if entity @s[tag=!cancel,tag=action_floor] run function medabots_server:blocks/stage_builder/action_floor
execute if entity @s[tag=!cancel,tag=spring_wall] run function medabots_server:blocks/stage_builder/spring_wall
execute if entity @s[tag=!cancel,tag=gas_floor] run function medabots_server:blocks/stage_builder/gas_floor
execute if entity @s[tag=!cancel,tag=hammer_punch] run function medabots_server:blocks/stage_builder/hammer_punch
execute if entity @s[tag=!cancel,tag=laser_trap] run function medabots_server:blocks/stage_builder/laser_trap
execute if entity @s[tag=!cancel,tag=guard,tag=!action_floor,tag=!pot] run function medabots_server:blocks/stage_builder/guard
execute if entity @s[tag=!cancel,tag=cannon,tag=!action_floor,tag=!pot] run function medabots_server:blocks/stage_builder/cannon
execute if entity @s[tag=!cancel,tag=round_stone,tag=!action_floor] run function medabots_server:blocks/stage_builder/round_stone
execute if entity @s[tag=!cancel,tag=ice_block,tag=!action_floor] run function medabots_server:blocks/stage_builder/ice_block
execute if entity @s[tag=!cancel,tag=bomb,tag=!action_floor] run function medabots_server:blocks/stage_builder/bomb

execute if entity @s[tag=!cancel,tag=no_ticker] run tag @e[distance=..0.7,type=!minecraft:player] add no_ticking
execute if entity @s[tag=!cancel,tag=disabled] run tag @e[distance=..0.7,type=!minecraft:player] add disabled