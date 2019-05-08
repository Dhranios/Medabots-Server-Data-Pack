# New press walls need scores
execute unless entity @s[scores={Time=-10..}] run scoreboard players add @s Time 0

# Extending and retracting
execute if entity @s[tag=north,tag=enabled,tag=!cannot_extend] run function medabots_server:blocks/press_wall/extend/north
execute if entity @s[tag=south,tag=enabled,tag=!cannot_extend] run function medabots_server:blocks/press_wall/extend/south
execute if entity @s[tag=east,tag=enabled,tag=!cannot_extend] run function medabots_server:blocks/press_wall/extend/east
execute if entity @s[tag=west,tag=enabled,tag=!cannot_extend] run function medabots_server:blocks/press_wall/extend/west
execute if entity @s[tag=north,tag=!enabled] run function medabots_server:blocks/press_wall/retract/north
execute if entity @s[tag=south,tag=!enabled] run function medabots_server:blocks/press_wall/retract/south
execute if entity @s[tag=east,tag=!enabled] run function medabots_server:blocks/press_wall/retract/east
execute if entity @s[tag=west,tag=!enabled] run function medabots_server:blocks/press_wall/retract/west

# Needs to retract fully before being removed
tag @s[tag=dead] add dying
tag @s[tag=dead] remove enabled
tag @s[tag=dead] remove dead
execute if entity @s[tag=dying,scores={Time=..0}] run fill ~ ~ ~ ~ ~3 ~ minecraft:air
kill @s[tag=dying,scores={Time=..0}]

# Takes time
tag @s[scores={Time=10,Range=2},tag=enabled] add cannot_extend
tag @s[scores={Time=20,Range=3},tag=enabled] add cannot_extend
tag @s[scores={Time=30,Range=4},tag=enabled] add cannot_extend
tag @s[scores={Time=40,Range=5},tag=enabled] add cannot_extend
tag @s[scores={Time=50,Range=6},tag=enabled] add cannot_extend
tag @s[scores={Time=60,Range=7},tag=enabled] add cannot_extend
tag @s[scores={Time=70,Range=8},tag=enabled] add cannot_extend
tag @s[scores={Time=80,Range=9},tag=enabled] add cannot_extend
tag @s[scores={Time=90,Range=10},tag=enabled] add cannot_extend
scoreboard players add @s[tag=enabled,tag=!cannot_extend,tag=!extending_blocked] Time 1
scoreboard players remove @s[tag=dying] Time 10
scoreboard players remove @s[scores={Time=1..},tag=!enabled] Time 1
execute if entity @s[tag=!enabled,scores={Time=1}] run playsound medabots_server:block.press_wall.stop block @a ~ ~ ~ 1
execute if entity @s[tag=enabled,tag=!stop_sound_played] unless entity @s[tag=!cannot_extend,tag=!extending_blocked] run playsound medabots_server:block.press_wall.stop block @a ~ ~ ~ 1
tag @s[tag=stop_sound_played] remove stop_sound_played
execute unless entity @s[tag=!cannot_extend,tag=!extending_blocked] run tag @s[tag=enabled] add stop_sound_played
tag @e[tag=!enabled,tag=cannot_extend] remove cannot_extend
tag @e[tag=extending_blocked] remove extending_blocked

# There's always a block at me
execute if entity @s[tag=north,tag=!dying] run setblock ~ ~ ~ minecraft:quartz_pillar[axis=z]
execute if entity @s[tag=south,tag=!dying] run setblock ~ ~ ~ minecraft:quartz_pillar[axis=z]
execute if entity @s[tag=east,tag=!dying] run setblock ~ ~ ~ minecraft:quartz_pillar[axis=x]
execute if entity @s[tag=west,tag=!dying] run setblock ~ ~ ~ minecraft:quartz_pillar[axis=x]
execute if entity @s[tag=!dying] run fill ~ ~1 ~ ~ ~3 ~ minecraft:black_stained_glass