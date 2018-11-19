# New press walls need scores
execute unless entity @s[scores={Time=-10..}] run scoreboard players add @s Time 0

# Extending and retracting
execute if entity @s[tag=north,tag=extend] run function medabots_server:stage/press_wall_north_extend
execute if entity @s[tag=south,tag=extend] run function medabots_server:stage/press_wall_south_extend
execute if entity @s[tag=east,tag=extend] run function medabots_server:stage/press_wall_east_extend
execute if entity @s[tag=west,tag=extend] run function medabots_server:stage/press_wall_west_extend
execute if entity @s[tag=north,tag=retract] run function medabots_server:stage/press_wall_north_retract
execute if entity @s[tag=south,tag=retract] run function medabots_server:stage/press_wall_south_retract
execute if entity @s[tag=east,tag=retract] run function medabots_server:stage/press_wall_east_retract
execute if entity @s[tag=west,tag=retract] run function medabots_server:stage/press_wall_west_retract

# Needs to retract fully before being removed
tag @s[tag=dead] add dying
tag @s[tag=dead] add retract
tag @s[tag=dead] remove extend
tag @s[tag=dead] remove dead
execute if entity @s[tag=dying,scores={Time=-10}] run fill ~ ~ ~ ~ ~3 ~ minecraft:air
kill @s[tag=dying,scores={Time=-10}]

# Takes time
tag @s[scores={Time=0},tag=retract] remove retract
tag @s[scores={Time=10,Range=2},tag=extend] remove extend
tag @s[scores={Time=20,Range=3},tag=extend] remove extend
tag @s[scores={Time=30,Range=4},tag=extend] remove extend
tag @s[scores={Time=40,Range=5},tag=extend] remove extend
tag @s[scores={Time=50,Range=6},tag=extend] remove extend
tag @s[scores={Time=60,Range=7},tag=extend] remove extend
tag @s[scores={Time=70,Range=8},tag=extend] remove extend
tag @s[scores={Time=80,Range=9},tag=extend] remove extend
tag @s[scores={Time=90,Range=10},tag=extend] remove extend
tag @s[tag=retract,tag=extend] remove retract
scoreboard players add @s[tag=extend] Time 1
scoreboard players remove @s[scores={Time=..0},tag=dying] Time 1
scoreboard players remove @s[scores={Time=1..},tag=retract] Time 1

# There's always a block at me
execute if entity @s[tag=north,tag=!dying] run setblock ~ ~ ~ minecraft:quartz_pillar[axis=z]
execute if entity @s[tag=south,tag=!dying] run setblock ~ ~ ~ minecraft:quartz_pillar[axis=z]
execute if entity @s[tag=east,tag=!dying] run setblock ~ ~ ~ minecraft:quartz_pillar[axis=x]
execute if entity @s[tag=west,tag=!dying] run setblock ~ ~ ~ minecraft:quartz_pillar[axis=x]
execute if entity @s[tag=!dying] run fill ~ ~1 ~ ~ ~3 ~ minecraft:black_stained_glass