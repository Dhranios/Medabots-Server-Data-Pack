# Is this press wall powered?
execute if score @s[tag=!dying] PowerAmount >= @s PowerNeeded run tag @s add powered
execute unless score @s[tag=!dying] PowerAmount >= @s PowerNeeded run tag @s remove powered

# Extending and retracting
execute if entity @s[tag=north,tag=powered,tag=!cannot_extend] run function medabots_server:blocks/press_wall/extend/north
execute if entity @s[tag=south,tag=powered,tag=!cannot_extend] run function medabots_server:blocks/press_wall/extend/south
execute if entity @s[tag=east,tag=powered,tag=!cannot_extend] run function medabots_server:blocks/press_wall/extend/east
execute if entity @s[tag=west,tag=powered,tag=!cannot_extend] run function medabots_server:blocks/press_wall/extend/west
execute if entity @s[tag=north,tag=!powered] run function medabots_server:blocks/press_wall/retract/north
execute if entity @s[tag=south,tag=!powered] run function medabots_server:blocks/press_wall/retract/south
execute if entity @s[tag=east,tag=!powered] run function medabots_server:blocks/press_wall/retract/east
execute if entity @s[tag=west,tag=!powered] run function medabots_server:blocks/press_wall/retract/west

# Needs to retract fully before being removed
tag @s[tag=dead] add dying
tag @s[tag=dead] remove powered
tag @s[tag=dead] remove dead
execute if entity @s[tag=dying,scores={Time=..0}] run fill ~ ~ ~ ~ ~3 ~ minecraft:air
execute if entity @s[tag=dying,scores={Time=..0}] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:grass_block replace minecraft:dirt
kill @s[tag=dying,scores={Time=..0}]

# Takes time
tag @s[scores={Time=10,Range=2},tag=powered] add cannot_extend
tag @s[scores={Time=20,Range=3},tag=powered] add cannot_extend
tag @s[scores={Time=30,Range=4},tag=powered] add cannot_extend
tag @s[scores={Time=40,Range=5},tag=powered] add cannot_extend
tag @s[scores={Time=50,Range=6},tag=powered] add cannot_extend
tag @s[scores={Time=60,Range=7},tag=powered] add cannot_extend
tag @s[scores={Time=70,Range=8},tag=powered] add cannot_extend
tag @s[scores={Time=80,Range=9},tag=powered] add cannot_extend
tag @s[scores={Time=90,Range=10},tag=powered] add cannot_extend
scoreboard players add @s[tag=powered,tag=!cannot_extend,tag=!extending_blocked] Time 1
scoreboard players remove @s[tag=dying] Time 1
scoreboard players remove @s[scores={Time=1..},tag=!powered,tag=!dying] Time 1
execute if entity @s[tag=!powered,scores={Time=1}] run playsound medabots_server:block.press_wall.stop block @a ~ ~ ~ 1
execute if entity @s[tag=powered,tag=!stop_sound_played] unless entity @s[tag=!cannot_extend,tag=!extending_blocked] run playsound medabots_server:block.press_wall.stop block @a ~ ~ ~ 1
tag @s[tag=stop_sound_played] remove stop_sound_played
execute unless entity @s[tag=!cannot_extend,tag=!extending_blocked] run tag @s[tag=powered] add stop_sound_played
tag @e[tag=!powered,tag=cannot_extend] remove cannot_extend
tag @e[tag=extending_blocked] remove extending_blocked

# There's always a block at me
execute if entity @s[tag=north,tag=!dying] run setblock ~ ~ ~ minecraft:quartz_pillar[axis=z]
execute if entity @s[tag=south,tag=!dying] run setblock ~ ~ ~ minecraft:quartz_pillar[axis=z]
execute if entity @s[tag=east,tag=!dying] run setblock ~ ~ ~ minecraft:quartz_pillar[axis=x]
execute if entity @s[tag=west,tag=!dying] run setblock ~ ~ ~ minecraft:quartz_pillar[axis=x]
execute if entity @s[tag=!dying] run fill ~ ~1 ~ ~ ~3 ~ minecraft:black_stained_glass

# Custom stage object powering
execute if entity @s[tag=custom_stage] run function medabots_server:blocks/custom_stage_object