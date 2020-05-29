# Play sound
execute if entity @s[scores={Time=-1..}] if entity @e[distance=..0.7,scores={Fly=0},tag=!float,tag=hostile,type=!minecraft:item,tag=!guard,tag=!move_target,tag=!guard,tag=!balloon_bomb] run tag @s add trigger
execute if entity @s[scores={Time=-1..}] if entity @e[distance=..0.7,tag=guard,tag=enabled] unless entity @e[distance=..0.7,tag=hostile,type=minecraft:item] run tag @s add trigger
execute if entity @s[scores={Time=-1},tag=trigger] run playsound medabots_server:block.floor_switch block @a ~ ~ ~ 1
execute if entity @s[scores={Time=0},tag=trigger,tag=green_floor_switch] run playsound medabots_server:block.floor_switch block @a ~ ~ ~ 1

# Specific
execute if entity @s[tag=green_floor_switch] run function medabots_server:blocks/floor_switch/green
execute if entity @s[tag=yellow_floor_switch] run function medabots_server:blocks/floor_switch/yellow
execute if entity @s[tag=blue_floor_switch] run function medabots_server:blocks/floor_switch/blue
tag @s[tag=trigger] remove trigger

# Custom stage object powering
execute if entity @s[tag=custom_stage] unless entity @s[scores={HomeX=0,HomeY=0,HomeZ=0}] run function medabots_server:blocks/floor_switch/custom_stage

# Remove when cleaning up stage
execute if entity @s[tag=dead] run function medabots_server:blocks/floor_switch/clean_up