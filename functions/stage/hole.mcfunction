# Tags new hamer punches with what block they'll replace
execute unless entity @s[scores={Time=0..}] run function medabots_server:stage/hole_scores

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run function medabots_server:stage/hole_clean_up

# Countdown punching
scoreboard players remove @s[scores={Time=1..}] Time 1
scoreboard players remove @s[scores={Time=..-1}] Time 1
execute positioned ~ ~-1 ~ if entity @e[tag=hostile,type=!minecraft:item,distance=..0.7] run scoreboard players remove @s[scores={Time=0}] Time 1

# Ambient sound
execute if entity @s[scores={Time=0}] run playsound medabots_server:block.hole.ambient hostile @a ~ ~ ~ 1

# Looks
execute if entity @s[scores={Time=-1..0},tag=!dead] run setblock ~ ~-1 ~ minecraft:black_carpet
execute if entity @s[scores={Time=-40..-31},tag=!dead] run setblock ~ ~-1 ~ minecraft:black_carpet
execute if entity @s[scores={Time=1..},tag=!dead] run setblock ~ ~-1 ~ minecraft:chiseled_quartz_block
execute if entity @s[scores={Time=-30..-2},tag=!dead] run setblock ~ ~-1 ~ minecraft:chiseled_quartz_block

# Something in the hole!
execute if entity @s[scores={Time=0}] positioned ~ ~-1 ~ store result entity @e[type=minecraft:item,distance=..0.7,sort=random,limit=1] Pos[1] double 0.01 run data get entity @s Pos[1] 100
execute if entity @s[scores={Time=-1}] positioned ~ ~-1 ~ if entity @e[tag=hostile,type=!minecraft:item,distance=..0.7] run playsound medabots_server:block.hole.swallow hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=-1}] positioned ~ ~-1 ~ as @e[tag=hostile,type=!minecraft:item,distance=..0.7] run teleport @s ~ ~-2 ~
execute if entity @s[scores={Time=-39..-2}] positioned ~ ~-3 ~ as @e[tag=hostile,type=!minecraft:item,distance=..0.7] run teleport @s ~ ~ ~
execute if entity @s[scores={Time=-39..-2}] positioned ~ ~-3 ~ run tag @e[tag=hostile,tag=ice_block,distance=..0.7] add dead
execute if entity @s[scores={Time=-39..-2}] positioned ~ ~-3 ~ run tag @e[tag=hostile,tag=round_stone,distance=..0.7] add dead
execute if entity @s[scores={Time=-39..-2}] positioned ~ ~-3 ~ run tag @e[tag=hostile,tag=bomb,distance=..0.7] add dead
execute if entity @s[scores={Time=-40}] run function medabots_server:stage/hole_spit
