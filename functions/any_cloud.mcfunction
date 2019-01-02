# The small timer so that you can jump on other entities
execute if entity @s[tag=footstool] run function medabots_server:medaparts/footstool_cloud

# Make the anti-tank attack do something
execute if entity @s[tag=anti_tank] run function medabots_server:medaparts/anti_tank_attack

# The small timer so that you can grab ledges
execute if entity @s[tag=edge_grab] run function medabots_server:medaparts/edge_grab_cloud

# Make stage objects do something
execute if entity @s[tag=spring_wall] run function medabots_server:stage/spring_wall
execute if entity @s[tag=floor_switch] run function medabots_server:stage/floor_switch
execute if entity @s[tag=mission] run function medabots_server:stage/mission
execute if entity @s[tag=raft] run function medabots_server:stage/raft
execute if entity @s[tag=round_stone,tag=!action_floor] positioned ~ ~0.38 ~ run function medabots_server:stage/round_stone
execute if entity @s[tag=ice_block,tag=!action_floor] positioned ~ ~0.38 ~ run function medabots_server:stage/ice_block
execute if entity @s[tag=thin_ice] run function medabots_server:stage/thin_ice
execute if entity @s[tag=drawbridge] run function medabots_server:stage/drawbridge
execute if entity @s[tag=fan] run function medabots_server:stage/fan
execute if entity @s[tag=action_floor] run function medabots_server:stage/action_floor
execute if entity @s[tag=balloon_bomb,tag=!action_floor] run function medabots_server:stage/balloon_bomb
execute if entity @s[tag=press_wall] run function medabots_server:stage/press_wall
execute if entity @s[tag=laser_trap] run function medabots_server:stage/laser_trap
execute if entity @s[tag=gas_floor] run function medabots_server:stage/gas_floor
execute if entity @s[tag=alarm] run function medabots_server:stage/alarm
execute if entity @s[tag=hammer_punch] run function medabots_server:stage/hammer_punch
execute if entity @s[tag=hole] run function medabots_server:stage/hole