# Is this press wall powered?
execute if score @s[tag=!dying] PowerAmount >= @s PowerNeeded run tag @s add powered
execute unless score @s[tag=!dying] PowerAmount >= @s PowerNeeded run tag @s remove powered

# Extending and retracting
scoreboard players operation #temp PressWallNr = @s PressWallNr
execute as @e[type=minecraft:armor_stand,tag=press_wall,tag=second_half] if score @s PressWallNr = #temp PressWallNr run tag @s add this_press_wall
execute if entity @s[tag=powered,tag=!cannot_extend] at @e[type=minecraft:armor_stand,tag=this_press_wall] run function medabots_server:blocks/press_wall/extend
execute if entity @s[tag=!powered,scores={Time=1..}] at @e[type=minecraft:armor_stand,tag=this_press_wall] run function medabots_server:blocks/press_wall/retract

execute unless entity @s[tag=!powered,scores={Time=1..}] unless entity @s[tag=powered,tag=!cannot_extend,tag=!extending_blocked] run function medabots_server:blocks/press_wall/final_update

# Takes time
scoreboard players add @s[tag=powered,tag=!cannot_extend,tag=!extending_blocked] Time 1
scoreboard players remove @s[scores={Time=1..},tag=!powered] Time 1
tag @s[scores={Time=8,Range=2},tag=powered] add cannot_extend
tag @s[scores={Time=16,Range=3},tag=powered] add cannot_extend
tag @s[scores={Time=24,Range=4},tag=powered] add cannot_extend
tag @s[scores={Time=32,Range=5},tag=powered] add cannot_extend
tag @s[scores={Time=40,Range=6},tag=powered] add cannot_extend
tag @s[scores={Time=48,Range=7},tag=powered] add cannot_extend
tag @s[scores={Time=56,Range=8},tag=powered] add cannot_extend
tag @s[scores={Time=64,Range=9},tag=powered] add cannot_extend
tag @s[scores={Time=72,Range=10},tag=powered] add cannot_extend
tag @s[scores={Time=80,Range=11},tag=powered] add cannot_extend
tag @s[scores={Time=88,Range=12},tag=powered] add cannot_extend
tag @s[scores={Time=96,Range=13},tag=powered] add cannot_extend
tag @s[scores={Time=104,Range=14},tag=powered] add cannot_extend
tag @s[scores={Time=112,Range=15},tag=powered] add cannot_extend
tag @s[scores={Time=120,Range=16},tag=powered] add cannot_extend
tag @s[scores={Time=128,Range=17},tag=powered] add cannot_extend
tag @s[scores={Time=136,Range=18},tag=powered] add cannot_extend
tag @s[scores={Time=144,Range=19},tag=powered] add cannot_extend
tag @s[scores={Time=152,Range=20},tag=powered] add cannot_extend
tag @s[scores={Time=160,Range=21},tag=powered] add cannot_extend
tag @s[scores={Time=168,Range=22},tag=powered] add cannot_extend
tag @s[scores={Time=176,Range=23..},tag=powered] add cannot_extend
execute if entity @s[tag=!powered,scores={Time=1}] run playsound medabots_server:block.press_wall.stop block @a ~ ~ ~ 1
execute if entity @s[tag=powered,tag=!stop_sound_played] unless entity @s[tag=!cannot_extend,tag=!extending_blocked] run playsound medabots_server:block.press_wall.stop block @a ~ ~ ~ 1
tag @s[tag=stop_sound_played] remove stop_sound_played
execute unless entity @s[tag=!cannot_extend,tag=!extending_blocked] run tag @s[tag=powered] add stop_sound_played
tag @e[tag=!powered,tag=cannot_extend] remove cannot_extend
tag @e[tag=extending_blocked] remove extending_blocked

# Remove if stage ends
fill ~ ~ ~ ~ ~3 ~ minecraft:black_stained_glass replace minecraft:air
execute if entity @s[tag=dead] run function medabots_server:blocks/press_wall/clean_up
tag @e[type=minecraft:armor_stand,tag=this_press_wall] remove this_press_wall
scoreboard players reset #temp PressWallNr

# Custom stage object powering
execute if entity @s[tag=custom_stage] run function medabots_server:blocks/custom_stage_object