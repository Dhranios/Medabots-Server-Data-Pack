# Tags new floor switches with what block they'll replace
execute unless entity @s[scores={FloorSwitchTime=-1..}] run function medabots_server:stage/floor_switch_scores

# Play sound
execute if entity @s[scores={FloorSwitchTime=-1..}] if block ~ ~ ~ minecraft:chest run tag @s add trigger
execute if entity @s[scores={FloorSwitchTime=-1..}] if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=hostile,type=!minecraft:item,tag=!guard,tag=!move_target,tag=!guard] run tag @s add trigger
execute if entity @s[scores={FloorSwitchTime=-1..}] if entity @e[distance=..0.7,scores={Float=0,Fly=0},tag=guard] unless entity @e[distance=..0.7,tag=hostile,type=minecraft:item] run tag @s add trigger
execute if entity @s[scores={FloorSwitchTime=-1},tag=trigger] run playsound medabots_server:block.floor_switch block @a ~ ~ ~ 1

# Specific
execute if entity @s[tag=green_floor_switch] run function medabots_server:stage/floor_switch_green
execute if entity @s[tag=yellow_floor_switch] run function medabots_server:stage/floor_switch_yellow
execute if entity @s[tag=blue_floor_switch] run function medabots_server:stage/floor_switch_blue
tag @s[tag=trigger] remove trigger

# Remove when cleaning up stage
execute if entity @s[tag=dead] run function medabots_server:stage/floor_switch_clean_up