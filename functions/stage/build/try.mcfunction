execute if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run tag @s add allowed
execute if entity @e[distance=..0.7,type=!minecraft:player,tag=!bridge,tag=!raft] run tag @s remove allowed

execute if entity @s[scores={StageBuild=1},tag=allowed] run function medabots_server:stage/build/starting_area
execute if entity @s[scores={StageBuild=2},tag=allowed] run function medabots_server:stage/build/goal_area
execute if entity @s[scores={StageBuild=3}] run function medabots_server:stage/build/pot
execute if entity @s[scores={StageBuild=100},advancements={medabots_server:special_items/action_floor=true}] run function medabots_server:stage/build/action_floor
execute if entity @s[scores={StageBuild=21..34}] run function medabots_server:stage/build/floor_switch
execute if entity @s[scores={StageBuild=10},tag=allowed,advancements={medabots_server:special_items/stone=true}] run function medabots_server:stage/build/stone
execute if entity @s[scores={StageBuild=17},advancements={medabots_server:special_items/accelerator=true}] run function medabots_server:stage/build/accelerator
execute if entity @s[scores={StageBuild=87..90},tag=allowed,advancements={medabots_server:special_items/gas_floor=true}] run function medabots_server:stage/build/gas_floor
execute if entity @s[scores={StageBuild=11..12},tag=allowed,advancements={medabots_server:special_items/hole=true}] run function medabots_server:stage/build/hole
execute if entity @s[scores={StageBuild=37..46},tag=allowed,advancements={medabots_server:special_items/hammer_punch=true}] run function medabots_server:stage/build/hammer_punch
execute if entity @s[scores={StageBuild=91..99},tag=allowed,advancements={medabots_server:special_items/spring_wall=true}] run function medabots_server:stage/build/spring_wall
execute if entity @s[scores={StageBuild=48..56},tag=allowed,advancements={medabots_server:special_items/press_wall=true}] run function medabots_server:stage/build/press_wall
execute if entity @s[scores={StageBuild=36}] run function medabots_server:stage/build/door
execute if entity @s[scores={StageBuild=5},tag=allowed] run function medabots_server:stage/build/wall
execute if entity @s[scores={StageBuild=14},tag=allowed,advancements={medabots_server:special_items/glass=true}] run function medabots_server:stage/build/glass
execute if entity @s[scores={StageBuild=15..16},tag=allowed,advancements={medabots_server:special_items/mirror=true}] run function medabots_server:stage/build/mirror
execute if entity @s[scores={StageBuild=101..110},tag=allowed,advancements={medabots_server:special_items/laser_trap=true}] run function medabots_server:stage/build/laser_trap
execute if entity @s[scores={StageBuild=111..170},tag=allowed,advancements={medabots_server:special_items/fan=true}] run function medabots_server:stage/build/fan
execute if entity @s[scores={StageBuild=4},tag=allowed] run function medabots_server:stage/build/bridge
execute if entity @s[scores={StageBuild=13},tag=allowed,advancements={medabots_server:special_items/drawbridge=true}] run function medabots_server:stage/build/drawbridge
execute if entity @s[scores={StageBuild=18},tag=allowed,advancements={medabots_server:special_items/raft=true}] run function medabots_server:stage/build/raft
execute if entity @s[scores={StageBuild=19},tag=allowed,advancements={medabots_server:special_items/whrilpool=true}] run function medabots_server:stage/build/whirlpool
execute if entity @s[scores={StageBuild=20},tag=allowed,advancements={medabots_server:special_items/algae=true}] run function medabots_server:stage/build/algae
execute if entity @s[scores={StageBuild=86},tag=allowed,advancements={medabots_server:special_items/alarm=true}] run function medabots_server:stage/build/alarm
execute if entity @s[scores={StageBuild=73..75},advancements={medabots_server:special_items/guard=true}] run function medabots_server:stage/build/guard
execute if entity @s[scores={StageBuild=57..72},advancements={medabots_server:special_items/cannon=true}] run function medabots_server:stage/build/cannon
execute if entity @s[scores={StageBuild=85},advancements={medabots_server:special_items/balloon_bomb=true}] run function medabots_server:stage/build/balloon_bomb
execute if entity @s[scores={StageBuild=76..82},advancements={medabots_server:special_items/bomb=true}] run function medabots_server:stage/build/bomb
execute if entity @s[scores={StageBuild=6..7}] run function medabots_server:stage/build/round_stone
execute if entity @s[scores={StageBuild=8..9},advancements={medabots_server:special_items/ice_block=true}] run function medabots_server:stage/build/ice_block
execute if entity @s[scores={StageBuild=83},tag=allowed,advancements={medabots_server:special_items/rubberobo=true}] run function medabots_server:stage/build/rubberobo
execute if entity @s[scores={StageBuild=84},advancements={medabots_server:special_items/jammy=true}] run function medabots_server:stage/build/jammy

execute if entity @s[scores={StageBuild=35}] run function medabots_server:stage/build/floor_switch_bind
execute if entity @s[scores={StageBuild=47}] run function medabots_server:stage/build/toggle_object_activation

tellraw @s[tag=!allowed] {"translate":"medabots_server:message.stage.stage_builder.cannot_place","color":"red"}
tag @s remove allowed
scoreboard players reset @s StageBuild