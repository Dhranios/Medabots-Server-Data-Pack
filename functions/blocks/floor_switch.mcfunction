# Play sound
execute if entity @s[scores={FloorSwitchTime=-1..}] if block ~ ~ ~ minecraft:chest run tag @s add trigger
execute if entity @s[scores={FloorSwitchTime=-1..}] if entity @e[distance=..0.7,scores={Fly=0},tag=!float,tag=hostile,type=!minecraft:item,tag=!guard,tag=!move_target,tag=!guard] run tag @s add trigger
execute if entity @s[scores={FloorSwitchTime=-1..}] if entity @e[distance=..0.7,scores={Fly=0},tag=!float,tag=guard] unless entity @e[distance=..0.7,tag=hostile,type=minecraft:item] run tag @s add trigger
execute if entity @s[scores={FloorSwitchTime=-1},tag=trigger] run playsound medabots_server:block.floor_switch block @a ~ ~ ~ 1

# Specific
execute if entity @s[tag=green_floor_switch] run function medabots_server:blocks/floor_switch/green
execute if entity @s[tag=yellow_floor_switch] run function medabots_server:blocks/floor_switch/yellow
execute if entity @s[tag=blue_floor_switch] run function medabots_server:blocks/floor_switch/blue
tag @s[tag=trigger] remove trigger

# Remove when cleaning up stage
execute if entity @s[tag=dead] run function medabots_server:blocks/put_block_back