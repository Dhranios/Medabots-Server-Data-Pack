execute if entity @e[distance=..0.7,limit=1,tag=starting_area] run function medabots_server:stage/build/get_data/starting_area
execute if entity @e[distance=..0.7,limit=1,tag=goal_area] run function medabots_server:stage/build/get_data/goal_area
execute if entity @e[distance=..0.7,limit=1,tag=pot] run function medabots_server:stage/build/get_data/pot
execute if entity @e[distance=..0.7,limit=1,tag=action_floor] run function medabots_server:stage/build/get_data/action_floor
execute if entity @e[distance=..0.7,limit=1,tag=floor_switch] run function medabots_server:stage/build/get_data/floor_switch
execute if entity @e[distance=..0.7,limit=1,tag=stone] run function medabots_server:stage/build/get_data/stone
execute if entity @e[distance=..0.7,limit=1,tag=accelerator] run function medabots_server:stage/build/get_data/accelerator
execute if entity @e[distance=..0.7,limit=1,tag=gas_floor] run function medabots_server:stage/build/get_data/gas_floor
execute if entity @e[distance=..0.7,limit=1,tag=hole] run function medabots_server:stage/build/get_data/hole
execute if entity @e[distance=..0.7,limit=1,tag=hammer_punch] run function medabots_server:stage/build/get_data/hammer_punch
execute if entity @e[distance=..0.7,limit=1,tag=spring_wall] run function medabots_server:stage/build/get_data/spring_wall
execute if entity @e[distance=..0.7,limit=1,tag=press_wall] run function medabots_server:stage/build/get_data/press_wall
execute if entity @e[distance=..0.7,limit=1,tag=door] run function medabots_server:stage/build/get_data/door
execute if entity @e[distance=..0.7,limit=1,tag=wall] run function medabots_server:stage/build/get_data/wall
execute if entity @e[distance=..0.7,limit=1,tag=glass] run function medabots_server:stage/build/get_data/glass
execute if entity @e[distance=..0.7,limit=1,tag=mirror] run function medabots_server:stage/build/get_data/mirror
execute if entity @e[distance=..0.7,limit=1,tag=laser_trap] run function medabots_server:stage/build/get_data/laser_trap
execute if entity @e[distance=..0.7,limit=1,tag=fan] run function medabots_server:stage/build/get_data/fan
execute if entity @e[distance=..0.7,limit=1,tag=bridge] run function medabots_server:stage/build/get_data/bridge
execute if entity @e[distance=..0.7,limit=1,tag=drawbridge] run function medabots_server:stage/build/get_data/drawbridge
execute if entity @e[distance=..0.7,limit=1,tag=raft] run function medabots_server:stage/build/get_data/raft
execute if entity @e[distance=..0.7,limit=1,tag=whrilpool] run function medabots_server:stage/build/get_data/whrilpool
execute if entity @e[distance=..0.7,limit=1,tag=algae] run function medabots_server:stage/build/get_data/algae
execute if entity @e[distance=..0.7,limit=1,tag=alarm] run function medabots_server:stage/build/get_data/alarm
execute if entity @e[distance=..0.7,limit=1,tag=guard] run function medabots_server:stage/build/get_data/guard
execute if entity @e[distance=..0.7,limit=1,tag=cannon] run function medabots_server:stage/build/get_data/cannon
execute if entity @e[distance=..0.7,limit=1,tag=balloon_bomb] run function medabots_server:stage/build/get_data/balloon_bomb
execute if entity @e[distance=..0.7,limit=1,tag=bomb] run function medabots_server:stage/build/get_data/bomb
execute if entity @e[distance=..0.7,limit=1,tag=round_stone] run function medabots_server:stage/build/get_data/round_stone
execute if entity @e[distance=..0.7,limit=1,tag=ice_block] run function medabots_server:stage/build/get_data/ice_block
execute if entity @e[distance=..0.7,limit=1,tag=rubberobo] run function medabots_server:stage/build/get_data/rubberobo
execute if entity @e[distance=..0.7,limit=1,tag=jammy] run function medabots_server:stage/build/get_data/jammy
execute if entity @e[distance=..0.7,limit=1,tag=mission] run function medabots_server:stage/build/get_data/mission
execute if entity @e[distance=..0.7,limit=1,tag=enemy_medabot] run function medabots_server:stage/build/get_data/enemy_medabot

execute unless entity @e[distance=..0.7,limit=1,type=!minecraft:player] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.get_data.no_object","color":"red"}

scoreboard players reset @s StageBuild